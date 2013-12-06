import 'dart:js' as js;

import 'package:js_wrapping_generator/dart_generator.dart';
import 'package:js_wrapping/js_wrapping.dart' as jsw;

class Enum extends jsw.IsEnum<int> {
  static final E1 = new Enum._(1);

  static final _FINDER = new jsw.EnumFinder<int, Enum>([E1]);

  static Enum find(Object o) => _FINDER.find(o);

  Enum._(int value)
      : super(value);
}

class Person extends jsw.TypedJsObject {
  static Person cast(js.JsObject jsObject) => jsObject == null ? null : new Person.fromJsObject(jsObject);
  Person.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  set s1(String value) => $unsafe['s1'] = value;
  void set s2(Person value) {
    $unsafe['s2'] = value == null ? null : value.$unsafe;
  }
  void set s3(DateTime value) {
    $unsafe['s3'] = value;
  }
  set s4(Enum value) => $unsafe['s4'] = value == null ? null : value.value;
  void set s5(dynamic value) {
    $unsafe['s5'] = value;
  }
  void set s6(dynamic value) {
    $unsafe['s6'] = value == null ? null : value is Person ? value.$unsafe : value is num ? value : throw "bad type";
  }
  String get g1 => $unsafe['g1'];
  Person get g2 => Person.cast($unsafe['g2']);
  List<Person> get g3 => jsw.TypedJsArray.cast($unsafe['g3'], new jsw.TranslatorForTypedJsObject<Person>(Person.cast));
  List<String> get g4 => jsw.TypedJsArray.cast($unsafe['g4']);
  List get g5 => jsw.TypedJsArray.cast($unsafe['g5']);
  DateTime get g6 => $unsafe['g6'];
  Enum get g7 => Enum.find($unsafe['g7']);
  dynamic get g8 => ((v3) => ((v2) => v2 != null ? v2 : ((v1) => v1 is int ? v1 : ((v0) => v0)(v1))(v3))(Enum.find(v3)))($unsafe['g8']);
  dynamic get g9 => ((v2) => Person.isInstance(v2) ? v2 : ((v1) => v1 is num ? v1 : ((v0) => v0)(v1))(v2))($unsafe['g9']);
  String m1() => $unsafe.callMethod('m1');
  void m2() {
    $unsafe.callMethod('m2');
  }
  m3() => $unsafe.callMethod('m3');
  Person m4() => Person.cast($unsafe.callMethod('m4'));
  List<Person> m5() => jsw.TypedJsArray.cast($unsafe.callMethod('m5'), new jsw.TranslatorForTypedJsObject<Person>(Person.cast));
  void m6(List l) {
    $unsafe.callMethod('m6', [l == null ? null : (l is jsw.TypedJsObject ? (l as jsw.TypedJsObject).$unsafe : new js.JsObject.jsify(l))]);
  }
  void m7([List l]) {
    $unsafe.callMethod('m7', [l == null ? null : (l is jsw.TypedJsObject ? (l as jsw.TypedJsObject).$unsafe : new js.JsObject.jsify(l))]);
  }
  Enum m8() => Enum.find($unsafe.callMethod('m8'));
  void m9(dynamic value) {
    $unsafe.callMethod('m9', [value == null ? null : value is Person ? value.$unsafe : value is num ? value : throw "bad type"]);
  }
  List<Enum> m10() => jsw.TypedJsArray.cast($unsafe.callMethod('m10'), new jsw.TranslatorForIsEnum<int, Enum>(Enum.find));
}
