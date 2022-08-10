// ================= Abstract Class
// saat kita membuat class, kita bisa menjadikan sebuah class sebagai abstract class
// abstract class artinya, class tersebut tidak bisa dibuat sebagai object secara langsung, hanya bisa diturunkan
// untuk membuat sebuah class menjadi abstract, kita bisa menggunakan kata kunci abstract sebelum kata kunci class
// dengan demikian abstract class bisa kita gunakan sebagai kontrak untuk class child

abstract class Location {
  String? name;
}

class City extends Location {
  // City(this.name); ini tidak bisa
  City(String name) {
    this.name = name;
  }
}

void main() {
  var city = City('Jakarta');
  print(city.name);

  // var location = Location('bandung');  abstract class tidak bisa dibuat object secara langsung
}
