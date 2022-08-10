// ================= Try Catch
// saat kita memanggil sebuah method yang bisa menyebabkan exception, maka secara otomatis program akan berhenti
// jika kita tidak ingin program berhenti, kita perlu menangkap exception tersebut, dan melakukan sesuatu ketika terjadi exception
// untuk menangkap exception, kita bisa menggunakan try-catch
// cara menggunakan try-catch sangat mudah, di block try, kita tinggal panggil method yang bisa menyebabkan exception, dan di block catch kita bisa melakukan sesuatu jika terjadi exception

// ================= Finally
// dalam try-catch, kita bisa menambahkan block finally
// block finally ini adalah block dimana akan selalu dieksekusi baik terjadi exception ataupun tidak
// ini sangat cocok ketika kita ingin melakukan sesuatu, tidak peduli sukses ataupun gagal

// ================= Try catch semua exception
// kadang kita tidak terlalu peduli dengan jenis class exception
// pada kasus seperti ini, kita bisa tidak menyebutkan class nya ketika melakukan try-catch

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
    Validation.validate("Eko", "ekos");
  } catch (exception) {
    print("Error: ${exception.toString()}");
// Finally
  } finally {
    print("program Selesai");
  }
}
