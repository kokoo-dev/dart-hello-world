import 'package:dart_hello_world/example.dart';

void run() {
  _is();
  _divide();
  _assignNotnull();
  _nullCondition();
  _cascade();
}

void _is() {
  const string = 'string';
  assert(string is String);
}

void _divide() {
  assert(5 / 2 == 2.5); // double
  assert(5 ~/ 2 == 2); // ~/ int
}

void _assignNotnull() {
  String? assignValue = 'null';
  String? nullValue;

  nullValue ??= assignValue;

  assert(nullValue == 'null');
}

void _nullCondition() {
  String? nullValue;

  String value = nullValue ?? 'not null';

  assert(value == 'not null');
}

void _cascade() {
  var nullExample = _createExample(true)
  ?..nullableInt = 10
  ..notnullString = 'string';

  var notnullExample = _createExample(false)
  ?..nullableInt = 10
  ..notnullString = 'string';

  assert(nullExample == null);
  assert(notnullExample != null);
}

Example? _createExample(bool isNull) {
  return isNull ? null : Example();
}