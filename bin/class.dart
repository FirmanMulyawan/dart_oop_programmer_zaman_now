// ============= membuat class
// untuk membuat class, kita bisa menggunakan kata kunci class
// penamaan class biasa menggunakan format PascalCase

// ============= membuat Object
// Object adalah hasil instansiasi dari sebuah class
// Untuk membuat object kita bisa menggunakan nama class lalu diikuti dengan ()
// kata kunci new nama class sudah tidak direkomendasikan lagi di dart

// ============= Field
// fields/ properties/ attributes adalah data yang bisa kita sisipkan didalam Object
// Namun sebelum kita bisa memasukkan data di fields, kita harus mendeklarasikan data apa saja yang dimiliki object tersebut didalam deklarasi class-nya
// Membuat field sama seperti membuat variable, namun ditempatkan di block class
// field wajib dimasukkan nilainya, kecuali field yang nullable

// ============= Manipulasi Field
// Field yang ada di object, bisa kita manipulasi. Tergantung final atau bukan.
// jika final, berarti kita tidak bisa mengubah data field nya, namun jika tidak, kita bisa mengubah fieldnya
// untuk memanipulasi data field, sama seperti cara pada variable
// untuk mengakses field, kita butuh kata kunci .(titik) setelah nama object dan diikuti nama fieldnya

// ============= Method
// selain menambahkan field, kita juga bisa menambahkan method ke object
// method adalah function yang terdapat didalam class
// cara untuk mendeklarasikan method tersebut didalam block class
// sama seperti function biasanya, kita juga bisa menambahkan return value, parameter di method yang ada didalam block class
// untuk mengakses method tersebut, kita bisa menggunakan tanda titik(.) dan diikuti dengan nama methodnya, sama seperti mengakses field

class Person {
  // field
  String name = "Guest";
  String? address;
  final String country = "Indonesia";

  // method in class
  void sayHello(String paramName) {
    print('Hello $paramName, My Name is $name');
  }

  void hello() {
    print('Hello function hello, my name is $name');
  }

  String getName() {
    return "Hello function getName,my name is $name";
  }
}

void main() {
  // object
  var person1 = Person();
  // print(person1); // Instance of 'Person'
  person1.name = "Eko Kurniawan Khannedy";
  person1.address = "Jakarta";
  // person1.country = "Singapore"; tidak bisa mengubah final field
  print(person1.name);
  print(person1.address);
  print(person1.country);

  person1.sayHello("Budi");
  person1.hello();
  print(person1.getName());

  Person person2 = Person();
  print(person2);
}
