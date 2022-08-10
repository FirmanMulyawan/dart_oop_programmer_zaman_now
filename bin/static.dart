// ================= Static
// static merupakan sebuah kata kunci yang digunakan untuk membuat field dan method yang bisa diakses tanpa harus membuat objectnya
// saat kita membuat field atau method yang static, artinya dia secara otomatis bisa diakses oleh object manapun, oleh karena itu perlu hati-hati ketika membuat field atau method static
// field atau method static bisa diakses oleh method yang tidak static
// namun field atau method static tidak bisa mengakses field atau method yang tidak static
// biasanya static digunakan untuk membuat utility
// untuk mengakses static field atau method, kita bisa langsung menggunakan nama class diikuti dengan titik dan static field atau methodnya

class Application {
  // static biasanya final
  static final String author = "Eko Kurniawan Khannedy";
  static final String name = "Belajar Pemrograman Dart";
}

class Math {
// Static method
  static int sum(int first, int second) => first + second;
}

void main() {
  print(Application.name);
  print(Application.author);

  var result = Math.sum(30, 10);
  print(result);
}
