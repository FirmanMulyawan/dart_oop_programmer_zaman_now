// ================= Equals Operator
// untuk membandingkan dua buah object apakah sama atau tidak, biasanya kita menggunakan operator ==
// secara default operator == adalah milik class object, implemetasinya jika kita menggunakan operator == milik class object adalah akan melakukan pengecekan kesamaan object dari lokasi di memory
// kadang - kadang, kita ingin mengimplementasikan logika untuk membandingkan object
// untuk hal ini, kita bisa melakukan override operator == yang ada di class object

import 'data/category_data.dart';

void main() {
  var category1 = Category('1', 'laptop');
  var category2 = Category('1', 'laptop');

  print(category1 == category1);
  print(category1 == category2);
}
