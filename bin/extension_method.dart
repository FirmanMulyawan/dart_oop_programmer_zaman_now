// ============= extension method
// extension method adalah cara menambahkan method terhadap class yang sudah ada, tanpa harus mengubah class tersebut
// hal ini kadang bermanfaat jika misal class nya adalah class milik library yang bukan kita yang membuatnya

// ============= membuat extension method
// membuat extension method hampir mirip dengan membuat class, namun kita perlu menggunakan kata kunci extension diikuti nama extension lalu diikuti kata kunci on dan nama Class yang ingin kita tambahkan extension methodnya

class Person {
  // field
  String name = "Guest";
}

// === extension method
extension SayGoodByeOnPersion on Person {
  void sayGoodBye(String paramName) {
    print("Good Bye $paramName, from $name");
  }
}

void main() {
  // object
  var person1 = Person();
  // print(person1); // Instance of 'Person'
  person1.name = "Eko Kurniawan Khannedy";

  person1.sayGoodBye("Firman");
}
