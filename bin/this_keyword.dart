// ================= this keyword
// saat kita membuat kode didalam block constructor atau method didalam class, kita bisa menggunakan kata kunci this untuk mengakses object saat ini
// misal kadang kita butuh mengakses sebuah field yang namanya sama dengan parameter method, hal ini tidak bisa dilakukan jika langsung menyebut nama field, kita bisa mengakses nama field tersebut dengan kata kunci this
// this juga tidak hanya digunakan untuk mengakses field milik object saat ini, namun juga bisa digunakan untuk mengakses method
// this bisa digunakan untuk mengatasi masalah variable shadowing

class Person {
  // field
  String name = "Guest";
  String? address;
  final String country = "Indonesia";

  // constructor
  // ============= variable shadowing
  Person(String name, String address) {
    this.name = name;
    this.address = address;
  }
}

void main() {
  // object
  var person = Person("Firman", "Jakarta");
  print(person.name);
  print(person.address);
}
