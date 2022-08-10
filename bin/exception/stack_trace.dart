// ================= Stack Trace
// saat kita menangkap exception, object exception tidak memiliki informasi posisi atau lokasi terjadinya error
// jika kita ingin mengetahui posisi atau lokasi terjadinya error, kita bisa menambahkan parameter kedua pada catch
// secara otomatis parameter kedua tersebut adalah sebuah object StackTrace
// https://api.dart.dev/stable/2.17.6/dart-core/StackTrace-class.html

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
    } else if (username != "Eko" || password != "eko") {
      throw Exception("Login failed");
    }
  }
}

void main() {
  try {
    Validation.validate("Eko", "salah");
  } on ValidationException catch (exception, stackTrace) {
    print('Error : ${exception.message}');
    print('Stack Trace: ${stackTrace.toString()}');
  } on Exception catch (exception, stackTrace) {
    print("Error Exception: ${exception.toString()}");
    print('Stack Trace: ${stackTrace.toString()}');
// Finally
  } finally {
    print("program Selesai");
  }
}
