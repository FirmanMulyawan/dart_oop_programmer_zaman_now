// ========== initializing formal parameter
// kadang saat membuat constructor, biasanya kita membuat parameter yang hanya digunakan untuk mengubah nilai yang ada di field
// untuk kasus ini, kita bisa menggunakan fitur formal parameter, dimana pada parameter kita bisa langsung sebutkan field mana yang akan diubah
// formal parameter hanya bisa digunakan di constructor, tidak bisa digunakan di method
// caranya kita cukup ubah parameternya dengan menggunakan this.nameField nya, tanpa perlu menggunakan tipe data

class Person {
  // field
  String name = "Guest";
  String? address;

  // constructor
  // ============= formal parameter
  Person(this.name, this.address);
}

void main() {
  // object
  var person = Person("Firman", "Jakarta");
  print(person.name);
  print(person.address);
}
