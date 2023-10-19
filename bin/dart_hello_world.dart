import 'package:dart_hello_world/variable.dart' as variable;
import 'package:dart_hello_world/operators.dart' as operators;
import 'package:dart_hello_world/metadata/todo_runner.dart' as todo_runner;
import 'package:dart_hello_world/type/built_in_type.dart' as built_in_type;
import 'package:dart_hello_world/type/record.dart' as record;

void main(List<String> arguments) {
  variable.run();
  operators.run();
  todo_runner.doSomething();
  built_in_type.run();
  record.run();
}
