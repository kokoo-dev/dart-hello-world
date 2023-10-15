void run() {
  _initVariable();
  _initString();
}

void _initVariable() {
  const string = 'string';
  const integer = 1;
  const float = 1.1;
  const boolean = true;
  const list = [1, 2, 3];
  const map = {
    'string': string,
    'integer': integer,
    'float': float,
    'boolean': boolean,
    'list': list
  };

  print(map);
}

void _initString() {
  var inference = 'ko';
  const constant = 'ko';
  Object object = 'ko';
  String string = 'ko';
  String? nullable = 'ko';

  assert(inference == constant);
  assert(constant == object);
  assert(object == string);
  assert(string == nullable);
}

void initLate() {
  late String huge = "Huge Data";
}