// ================= Inheritance
// inheritance atau pewarisan adalah kemampuan untuk menurunkan sebuah class ke class lain
// dalam artian, kita bisa membuat class parent dan class child
// class child, hanya bisa punya 1 class parent, namun 1 class parent bisa punya banyak class child
// saat sebuah class diturunkan, maka semua field dan method yang ada di class parent, secara otomatis akan dimiliki oleh class child
// untuk melakukan pewarisan, di class child, kita harus menggunakan kata kunci extends lalu diikuti dengan nama class parent nya

// parent class
class Manager {
  String? name;

  void sayHello(String name) {
    print('Hello $name, my name is ${this.name}');
  }
}

// child class
class VicePresident extends Manager {
  String? gender;
}

void main() {
  var manager = Manager();
  manager.name = 'Eko';
  manager.sayHello('Budi');

  var vp = VicePresident();
  vp.name = 'Kurniawan';
  vp.sayHello('Alex');
}
