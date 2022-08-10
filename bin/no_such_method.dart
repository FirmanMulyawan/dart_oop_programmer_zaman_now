// ================= No Such Method
// NoSuchMethod merupakan sebuah method yang terdapat di class Object yang bisa kita override untuk mendeteksi atau bereaksi ketika sebuah method yang tidak ada dipanggil
// NoSuchMethod hanya bisa digunakan ketika tipe objectnya adalah dynamic atau sebuah abstract class
// https://api.dart.dev/stable/2.17.6/dart-core/Object/noSuchMethod.html
// https://api.dart.dev/stable/2.17.6/dart-core/Invocation-class.html

import 'dart:mirrors';

class Repository {
  final String _name;

  Repository(this._name);

  @override
  noSuchMethod(Invocation invocation) {
    var column = MirrorSystem.getName(invocation.memberName);
    var value = invocation.positionalArguments.first;
    var sql = "select * from $_name where $column = '$value'";
    print(sql);
  }
}

void main() {
  dynamic repository = Repository('products');

  repository.id('1');
  repository.name('laptop');
  repository.quantity(1000);
}
