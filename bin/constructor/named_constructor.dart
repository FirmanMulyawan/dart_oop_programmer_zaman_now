// ================= Named Constructor
// constructor hanya bisa dibuat satu saja, mirip seperti function atau method, kita tidak bisa membuat beberapa dengan nama yang sama
// namun terdapat feature yang bernama named constructor, yaitu constructor dengan nama yang berbeda
// dengan menggunakan named constructor, kita bisa membuat cosntructor lebih dari satu, namun wajib menggunakan nama yang berbeda
// untuk membuatnya kita bisa menggunakan nama class.namaConstructornya
// named costructor bisa lebih dari satu

// ================= menggunakan Named Constructor
// untuk membuat object menggunakan named constructor, kita bisa langsung mengakses menggunakan class.namedConstructor()

class Person {
  // field
  String name = "Guest";
  String? address;

  // constructor
  // ============= formal parameter
  Person(this.name, this.address);

  // ============== Named Constructor
  Person.withName(this.name);
  Person.withAddress(this.address);
}

void main() {
  // object
  var person = Person("Firman", "Jakarta");

  print(person.name);
  print(person.address);

  var person2 = Person.withName("Mulyawan");
  print(person2.name);
  print(person2.address);

  var person3 = Person.withAddress("Majalengka");
  print(person3.name);
  print(person3.address);
}
