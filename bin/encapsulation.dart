// ================= Encapsulation
// Encapsulation artinya memastikan data sensitif sebuah object tersembunyi dari akses luar
// hal ini bertujuan agar kita bisa menjaga agar data sebuah object tetap baik dan valid
// untuk mencapai ini, biasanya kita akan membuat semua field yang tidak bisa diakses dari luar
// agar bisa diubah, kita akan menyediakan method untuk mengubah dan mendapatkan field tersebut

// ================= getter dan setter
// proses encapsulation sudah dibuat standarisasinya, dimana kita bisa menggunakan getter dan setter method
// getter adalah function yang dibuat untuk mengambil data field
// setter adalah function untuk mengubah data field
// untuk getter, kita bisa menggunakan kata kunci get
// untuk setter, kita bisa menggunakan kata kunci set

// ================= Expression Body
// jika getter dan setter yang kita buat isinya hanya mengambil dan mengubah field, disarankan untuk menggunakan expression body
// cara membuat expression body mirip seperti anonymous function

// ================= getter dan setter yang tidak perlu
// dalam bahasa pemrograman seperti java atau C#, penggunaan getter dan setter sudah menjadi sesuatu yang sangat lumrah, hal ini karena mengakses field dan method sangatlah berbeda, oleh karena itu dari awal selalu dibuat getter dan setter
// di dart, hal ini tidak berlaku, jika isi getter dan setter hanya melakukan redirect data ke field, disarankan tidak perlu menggunakan getter dan setter, cukup langsung saja menggunakan field
// hal ini dikarenakan dalam dart, jika kedepannya kita ingin menambah getter dan setter, kita bisa tambahkan, tanpa harus mengubah kode client

class Reactangle {
  int _width = 1;
  int _length = 1;

  // int get width {
  //   return _width;
  // }

  int get width => _width;

  // set width(int value) {
  //   _width = value;
  // }

  // set width(int value) => _width = value;

  // setter yang baik
  set width(int value) {
    if (value >= 1) {
      _width = value;
    }
  }

  // int get length {
  //   return _length;
  // }

  int get length => _length;

  // set length(int value) {
  //   _length = value;
  // }

  // set length(int value) => _length = value;

  // setter yang baik
  set length(int value) {
    if (value >= 1) {
      _length = value;
    }
  }
}

void main() {
  var rectangle = Reactangle();
  rectangle.width = -1;
  print(rectangle.width);

  rectangle.length = 1;
  print(rectangle.length);
}
