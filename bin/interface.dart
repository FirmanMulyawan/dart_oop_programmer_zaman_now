// ================= Interface
// sebelumnya kita sudah tahu bahwa abstract class bisa kita gunakan sebagai kontrak untuk class childnya
// namun sebenarnya yang lebih tepat untuk kontrak adalah interface
// jangan salah sangka bahwa interface disini bukanlah user interface
// interface mirip seperti abstract class, yang membedakan adalah di interface, semua method otomatis abstract
// untuk mewariskan interface, kita tidak menggunakan kata kunci extends, melainkan implements

// ================= membuat Interface
// hal yang sangat berbeda di dart dan bahasa pemrograman java, PHP dan lain-lain adalah saat kita membuat interface
// interface di dart bisa diambil dari class apapun, saat kita membuat sebuah class, secara otomatis class tersebut merupakan interface untuk class itu sendiri
// interface dari class tersebut, bisa kita gunakan pada class lain jika kita ingin
// maka secara otomatis, kita harus mendeklarasikan semua method dan field yang terdapat pada class tersebut, karena yang kita ambil sebenarnya adalah interfacenya, bukan class nya
// anggap saja interface adalah kontrak dari pembuatan class

class Car {
  String name = "";

  void drive() {}

  int getTire() {
    return 0;
  }
}

class Avanza implements Car {
  // di interface semua filed & method harus dideklarasikan ualng
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
}
