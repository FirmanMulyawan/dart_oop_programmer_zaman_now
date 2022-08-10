// ================= No Such Method
// NoSuchMethod merupakan sebuah method yang terdapat di class Object yang bisa kita override untuk mendeteksi atau bereaksi ketika sebuah method yang tidak ada dipanggil
// NoSuchMethod hanya bisa digunakan ketika tipe objectnya adalah dynamic atau sebuah abstract class
// https://api.dart.dev/stable/2.17.6/dart-core/Object/noSuchMethod.html
// https://api.dart.dev/stable/2.17.6/dart-core/Invocation-class.html

// ================= No Such Method untuk abstract class
// salah satu penggunaan NoSuchMethod yang biasanya digunakan adalah sebagai implementasi abstract class
//dengan menggunakan NoSuchMethod, kita tidak perlu mengimplementasikan method yang terdapat di abstract class lagi

// ================= No Such Method untuk interface
// selain abstract class, NoSuchMethod juga bisa digunakan sebagai implementasi untuk interface

import 'dart:mirrors';

abstract class CategoryRepository {
  id(String id);
  name(String name);
  quantity(int quantity);
}

class Repository extends CategoryRepository {
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
  var repository = Repository('products');

  repository.id('1');
  repository.name('laptop');
  repository.quantity(1000);
  // repository.blablabla(1000); // tidak bisa karena di abstract class tidak ada
}
