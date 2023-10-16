void run() {
  _runNumber();
  _runDouble();
  _parse();
  _compareString();
}

void _runNumber() {
  const x = 171;
  const hex = 0xAB;
  assert(x == hex);
}

void _runDouble() {
  const x = 0.171;
  const exponents = 1.71e-1;
  assert(x == exponents);

  const y = 1;
  assert(y == 1.0);
}

void _parse() {
  var one = int.parse('1');
  assert(one == 1);

  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);

  String oneAsString = 1.toString();
  assert(oneAsString == '1');
}

void _compareString() {
  const quotes1 = 'quotes';
  const quotes2 = "quotes";
  assert(quotes1 == quotes2);

  const expression = 'expression';
  assert('expression string' == '$expression string');
  assert('EXPRESSION string' == '${expression.toUpperCase()} string');

  const multiLine1 = '''
multi
line
string
''';
  const multiLine2 = """
multi
line
string
""";

  assert(multiLine1 == multiLine2);

  const emoji = '😀';
  print(emoji);
}
