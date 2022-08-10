// ================= method Overriding
// method overriding adalah kemampuan mendeklarasikan ulang method di child class, yang sudah ada di parent class
// saat kita melakukan proses overriding tersebut, secara otomatis ketika kita membuat object dari class child, method yang di class parent tidak bisa diakses lagi
// saat melakukan method overriding, kita harus pastikan deklarasi method nya harus sama dengan di parent class nya

class Manager {
  String? name;

  void sayHello(String name) {
    print('Hello $name, my name is Manager ${this.name}');
  }
}

class VicePresident extends Manager {
  @override
  void sayHello(String name) {
    print('Hello tuan $name, my name is VP ${this.name}');
  }
}

class CLevel extends Manager {
  @override
  void sayHello(String name) {
    print('Hello yang mulia $name, my name is CLevel ${this.name}');
  }
}

void main() {
  var manager = Manager();
  manager.name = 'Eko';
  manager.sayHello('Budi');

  var vp = VicePresident();
  vp.name = 'Kurniawan';
  vp.sayHello('Alex');
}
