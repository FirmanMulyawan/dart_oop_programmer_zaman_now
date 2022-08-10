// ================= Typedef
// typedef merupakan feature dimana kita bisa membuat alias untuk type data lainnya
// ini cocok ketika misal terdapat class dengan nama yang sama, sehingga kita bisa menggunakan alias untuk nama lain
// atau kita bisa mempersingkat nama class yang panjang dengan alias

// ================= Typedef untuk function (tidak direkomendasikan)
// typedef juga tidak hanya bisa digunakan untuk membuat alias untuk class, tapi juga bisa digunakan untuk membuat alias untuk function
// nama perlu diperhatikan, sangat direkomendasikan tetap mendeklarasikan function menggunakan deklarasi functionnya, dibandingkan menggunakan typedef
// https://dart.dev/guides/language/effective-dart/design#prefer-inline-function-types-over-typedefs

class Sum {
  int first;
  int second;

  Sum(this.first, this.second);

  int call() => first + second;
}

typedef Jumlah = Sum;
typedef Total = Sum;

typedef Filter = String Function(String);

void sayHello(String name, Filter filter) {
  print('Hello ${filter(name)}');
}

void main() {
  var sum = Total(10, 10);

  print(sum());

  sayHello('Eko', (name) => name.toUpperCase());
}
