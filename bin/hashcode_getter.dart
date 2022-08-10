// ================= hashCode getter
// hashCode getter adalah representasi integer object kita, mirip toString yang merupakan representasi string, hashCode adalah representasi integer
// hashCode sangat bermanfaat untuk membuat struktur data unique seperti HashMap, hashSet, dan lain-lain, karena cukup menggunakan hashCode method untuk mendapatkan identitas unique object kita karena lebih ringan
// secara default hashCode akan mengembalikan milai integer sesuai data di memory, namun kita bisa meng-override nya jika kita ingin

// ================= kontrak hashCode method
// tidak mudah meng-override method hashCode, karena ada kontraknya:
// sebanyak apapun hashCode dipanggil, untuk object yang sama, harus menghasilkan data integer yang sama
// jika ada 2 object yang sama jika dibandingkan menggunakan method equals, maka nilai hashCode nya juga harus sama

import 'data/category_data.dart';

void main() {
  var category1 = Category('1', 'laptop');
  var category2 = Category('1', 'laptop');

  print(category1 == category1);
  print(category1 == category2);

  print(category1.hashCode);
  print(category2.hashCode);
}
