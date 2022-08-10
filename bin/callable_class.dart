// ================= callable class (tidak disarankan)
// callable class merupakan class yang bisa kita panggil seperti function
// untuk membuat callable class, kita perlu menambahkan sebuah method bernama call() di class tersebut
// parameter dan return value dari method tersebut bisa disesuaikan sesuai keinginan kita
// setelah membuat objectnya, kita bisa langsung memanggil method call() tersebut menggunakan nama objectnya saja

class Sum {
  int first;
  int second;

  Sum(this.first, this.second);

// callable class
  int call() => first + second;
}

void main() {
  var sum = Sum(10, 20);

  print(sum());
}
