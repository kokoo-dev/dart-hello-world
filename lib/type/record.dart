void run() {
  _init();
  _initTypeAnnotation();
  _initFieldName();
  _getField();
}

void _init() {
  var record = ('string', 1, a: 1.1, b: [1,2,3]);
  print('record:: $record');

  assert(record is Record);
}

void _initTypeAnnotation() {
  (String, int, bool) record = ('string', 2, true);
  print('record:: $record');

  assert(record is Record);
}

void _initFieldName() {
  ({int a, int b}) record1 = (a: 1, b: 2);
  ({int x, int y}) record2 = (x: 1, y: 2);
  assert(record1 != record2);

  (int a, int b) record3 = (1, 2);
  (int x, int y) record4 = (1, 2);
  assert(record3 == record4);
}

void _getField() {
  const first = 1;
  const second = true;
  const third = 'string;';
  const record = (first, a: second, third);

  assert(record.$1 == first);
  assert(record.a == second);
  assert(record.$2 == third);
}