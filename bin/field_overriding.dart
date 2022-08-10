// ================= Field Overriding
// tidak terlalu berguna
// field overriding adalah kemampuan mendeklarasikan ulang field di child class, yang sudah ada di parent class
// saat kita melakukan proses overriding tersebut, secara otomatis ketika kita membuat object dari class child, field yang di class parent tidak bisa diakses lagi
// saat kita melakukan field overriding, kita harus pastikan deklarasi field nya harus sama dengan di parent class

class Person {
  String name = 'Person';

  void sayHello(String? name) {
    print('Hello $name, my name is ${this.name}');
  }
}

class OtherPerson extends Person {
  @override
  String name = 'Other Person';
}

void main() {
  var person = Person();
  person.sayHello('Eko');

  var otherPerson = OtherPerson();
  otherPerson.sayHello('Eko');
}
