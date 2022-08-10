// ================= Redirecting constructor
// saat membuat named costructor, kita bisa memanggil default costructor, atau istilahnya adalah melakukan redirecting constructor
// cara membuat redirecting costructor adalah dengan menambahkan: (titik dua), lalu diikuti dengan memanggil this(parameter), dimana this() disini adalah dianggap mengakses default constructor
// saat menggunakan redirecting costructor, kita tidak bisa menambahkan body pada redirecting constructor

// ================= Redirecting constructor
// redirecting juga bisa dilakukan ke named cosntructor
// caranya kita ganti ketika memanggil this menjadi this.namedConstructor()

class Person {
  // field
  String name = "Guest";
  String? address;

  // constructor
  // ============= formal parameter
  Person(this.name, this.address);

// ======== Redirecting constructor
  Person.withName(String name) : this(name, "No Address");
  Person.withAddress(String address) : this("No Name", address);

  Person.fromjakarta() : this.withAddress("Jakarta");

  Person.withNoname() : this.withName("No Name");
}

void main() {
  // object
  var person = Person("Firman", "Purwokerto");

  print(person.name);
  print(person.address);

  var person2 = Person.withName("Mulyawan");
  print(person2.name);
  print(person2.address);

  var person3 = Person.withAddress("Majalengka");
  print(person3.name);
  print(person3.address);

  var person4 = Person.fromjakarta();
  print(person4.name);
  print(person4.address);

  var person5 = Person.withNoname();
  print(person5.name);
  print(person5.address);
}
