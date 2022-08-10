// ============= constructor
// saat kita membuat object, maka kita seperti memanggil sebuah method, karena kita menggunakan kurung()
// didalam class, kita bisa membuat costructor, constructor adalah method yang akan dipanggil saat pertama kali object dibuat
// mirip seperti di method, kita bisa memberi parameter pada constructor
// nama costructor harus sama dengan nama class, dan tidak membutuhkan kata kunci void atau return value
// ketika kita menambahkan constructor pada class, maka saat membuat object baru, kita wajib mengikuti parameter yang ada di constructor
// tidak bisa buat constructor lebih dari satu

class Person {
  // field
  String name = "Guest";
  String? address;
  final String country = "Indonesia";

  // constructor
  Person(String paramName, String paramAddress) {
    name = paramName;
    address = paramAddress;
  }
}

void main() {
  // object
  var person = Person("Firman", "Jakarta");
  print(person.name);
  print(person.address);
}
