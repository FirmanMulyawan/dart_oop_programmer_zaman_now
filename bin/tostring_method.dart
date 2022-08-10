// ================= ToString Method
// sebelumnya kita sudah bahas bahwa parent class untuk semua class kecuali null adalah object
// didalam object, terdapat method bernama toString(), method ini merupakan method untuk representasi string dari object
// contohnya, saat kita menggunakan function print(object), sebenarnya yang dipanggil adalah print(object.toString())
// kita bisa meng-override method toString() jika ingin mengimplementasikan representasi data string dari class yang kita buat

class Product {
  String? id;
  String? name;
  int? _quantity; // tidak bisa diakses diluar directory

  int? getQunatity() {
    return _quantity;
  }

  //  ToString Method
  @override
  String toString() {
    return 'Product {id: $id, name: $name, qunatity: $_quantity}';
  }
}

void main() {
  var product = Product();
  product.id = '1';
  product.name = 'Laptop';

  print(product.toString());
  print(product);
}
