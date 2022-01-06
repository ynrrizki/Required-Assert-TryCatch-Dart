import 'dart:io';
// ==============
// if your want to using @required, you must using import 'package:meta/meta.dart';
import 'package:meta/meta.dart';

main(List<String> args) {
  Person? p;

  // try catch
  try {
    p = Person(name: null);
  } catch (e) {
    print(e);
  }

  print(p!.age);
  print("Hello World");
}

class Person {
  final String? name;
  final int? age;
  // ==============
  // TODO: - required
  Person({@required this.name, this.age = 0}) {
    // ==============
    // TODO: - assert
    assert(name != null, "You must give person's name");
  }
}
