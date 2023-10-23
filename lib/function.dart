void run() {
  _shorthand();
  _specifyArgumentName();
  _defaultParameter();
  _passAnotherFunction();
  _lexicallScope();
}

bool _shorthand() => 1 is int;

void _specifyArgumentName() {
  _do(isTrue: true, number: 2);
}

void _defaultParameter({bool isTrue = false, int number = 1}) {
  _do(isTrue: isTrue, number: number);
}

void _passAnotherFunction() {
  const list = [1, 2, 3];
  list.forEach(_printNumber);
}

void _lexicallScope() {
  const root = true;

  void _childFunction() {
    const child = true;

    void _grandChildFunction() {
      const grandChild = true;

      assert(root);
      assert(child);
      assert(grandChild);
    }
  }
}

void _do({bool? isTrue, int? number}) {
  print("_do isTrue:: $isTrue, number:: $number");
}

void _printNumber(int number) {
  print("print:: $number");
}