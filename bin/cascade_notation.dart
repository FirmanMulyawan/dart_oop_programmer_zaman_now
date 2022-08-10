// ================= Cascade Notation
// cascade notation merupakan operator yang bisa kita gunakan untuk memberikan beberapa operasi pada object yang sama
// ada 2 jenis cascade notation, yaitu ..(titik titik) dan ?.. (tanda tanya titik titik)
// titik titik (..) digunakan untuk object yang tidak nullable, sedangkan tanda tanya titik titik (?..) digunakan untuk object yang nullable

// ignore_for_file: unused_local_variable

class User {
  String? username;
  String? name;
  String? email;
}

User? createUser() {
  return null;
}

void main() {
  // var user = User();
  // user.username = "Eko";
  // user.name = "Eko Kurniawan";
  // user.email = "eko@example.com";

// ====== Cascade Notation
  var user = User()
    ..username = "Eko"
    ..name = "Eko Kurniawan"
    ..email = "eko@contoh.com";

  User? user2 = createUser()
    ?..username = "Eko"
    ..name = "Eko Kurniawan"
    ..email = "eko@contoh.com";
}
