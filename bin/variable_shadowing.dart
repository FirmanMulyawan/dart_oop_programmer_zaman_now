// ============= variable shadowing
// variable shadowing adalah kejadian ketika kita membuat nama variable dengan nama yang sama di scope yang menutupi variable dengan nama yang sama di scope diatasnya
// ini biasa terjadi seperti kita membuat nama parameter di method sama dengan nama field di class
// saat terjadi variable shadowing, maka secara otomatis variable di scope diatasnya tidak bisa diakses

class Person {
  // field
  String name = "Guest";
  String? address;
  final String country = "Indonesia";

  // constructor
  // ============= variable shadowing
  Person(String name, String address) {
    name = name;
    address = address;
  }
}

void main() {
  // object
  var person = Person("Firman", "Jakarta");
  print(person.name);
  print(person.address);
}
