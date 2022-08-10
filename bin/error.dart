// ================= Error
// selain exception, ada jenis kesalahan lagi yaitu Error
// berbeda dengan exception, error adalah jenis kesalahan yang harus dihindari, dan jika terjadi, lebih baik segera hentikan programnya
// error biasanya terjadi karena ada kesalahan pada kode program kita
// contoh, kita mengakses index yang salah di list
// https://api.dart.dev/stable/2.17.6/dart-core/Error-class.html

void main() {
  var list = ["Firman", "Kurniawan", "Khannedy"];

  print(list[0]);
}
