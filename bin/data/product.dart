// ================= Access Modifier
// secara default, saat kita membuat field atau method dalam sebuah class, maka semua field dan method tersebut bisa diakses oleh siapa saja
// kadang-kadang kita ingin menyembunyikan field atau method
// untuk menyembunyikan akses field atau method, kita bisa menambahkan _(underscore) di awal field atau methodnya
// secara otomatis field atau method tersebut, hanya bisa diakses dari file tersebut, dan artinya tidak bisa diakses dari luar file

class Product {
  String? id;
  String? name;
  int? _quantity;

  int? _getQuantity() {
    return _quantity;
  }
}

void main() {
  var product = Product();
  product.id = '1';
  product.name = 'Laptop';
  product._quantity = 100; // disini bisa diakses karena di file yang sama
  product._getQuantity();
}
