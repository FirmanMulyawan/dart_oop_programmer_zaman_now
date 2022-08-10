// ================= Exception
// saat kita membuat aplikasi, kita tidak akan terhindar dengan yang namanya error
// Error dipresentasikan dengan istilah exception, dan semua direpresentasikan dalam bentuk class exception
// kita bisa menggunakan class exception sendiri, atau menggunakan yang sudah disediakan
// untuk membuat sebuah exception, kita bisa menggunakan kata kunci throw, diikuti dengan object exceptionnya
// https://api.dart.dev/stable/2.17.6/dart-core/Exception-class.html

// ================= Membuat class Exception
// selain menggunakan class exception yang sudah tersedia, kita juga bisa membuat class exception sendiri
// tidak ada kontrak dalam pembuatan class exception, kita bisa membuat class biasa
// namun sangat direkomendasikan jika membuat class exception baru, kita melakukan implements ke class Exception

class ValidationException implements Exception {
  String message;

  ValidationException(this.message);
}

class Validation {
  static void validate(String username, String password) {
    if (username == "") {
      throw ValidationException("Username is blank");
    } else if (password == "") {
      throw ValidationException("Password is blank");
    }
    print('$username $password');
  }
}

void main() {
  Validation.validate("hallo", "firman");
}
