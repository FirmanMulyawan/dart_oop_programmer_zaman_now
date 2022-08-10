// ================= Multiple Interface Inheritance
// hal yang membedakan ketika kita melakukan pewarisan adalah kita hanya bisa melakukan extends terhadap satu class, namun kita bisa melakukan implements terhadap beberapa class
// hal ini dikarenakan sebenarnya implements bukanlah melakukan pewarisan, melainkan mendeklarasikan ulang seluruh method dan field
// anggap saja ini seperti membuat class yang berbeda, namun memiliki field dan method yang sama
// untuk melakukan multiple implements, kita bisa menggunakan pemisah tanda koma antar class yang kita implements

// ================= membuat Interface
// hal yang sangat berbeda di dart dan bahasa pemrograman java, PHP dan lain-lain adalah saat kita membuat interface
// interface di dart bisa diambil dari class apapun, saat kita membuat sebuah class, secara otomatis class tersebut merupakan interface untuk class itu sendiri
// interface dari class tersebut, bisa kita gunakan pada class lain jika kita ingin
// maka secara otomatis, kita harus mendeklarasikan semua method dan field yang terdapat pada class tersebut, karena yang kita ambil sebenarnya adalah interfacenya, bukan class nya
// anggap saja interface adalah kontrak dari pembuatan class

abstract class Car {
  String name = "";

  void drive() {}

  int getTire() {
    return 0;
  }
}

abstract class HasBrand {
  String getBrand();
}

class Avanza implements Car, HasBrand {
  @override
  String name = "Avanza";

  @override
  void drive() {
    print('Drive Avanza');
  }

  @override
  int getTire() {
    return 4;
  }

  @override
  String getBrand() => 'Toyota';
}
