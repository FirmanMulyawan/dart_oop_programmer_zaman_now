// ================= Object Class
// setiap class yang kita buat secara otomatis adalah turunan dari class object, kecuali null
// walaupun tidak secara langsung kita eksplisit menyebutkan extends Object, tetapi secara otomatis akan membuat class kita extends object
// bisa dikatakan class object adalah superclass untuk semua class
// https://api.dart.dev/stable/2.17.6/dart-core/Object-class.html

class Person {}

void main() {
  var number = 100;
  print(number.toString());

  var person = Person();
  print(person.toString());
}
