// ================= Super Constructor
// tidak hanya untuk mengakses method atau field yang ada di parent class, kata kunci super juga bisa digunakan untuk mengakses costructor
// namun syaratnya untuk mengakses parent class constructor, kita harus mengaksesnya didalam class child constructor
// memanggil super costructor hanya bisa dilakukan dalam bentuk redirecting constructor

class Manager {
  String? name;

  Manager(this.name);
}

class VicePresident extends Manager {
  VicePresident(String name) : super(name) {
    print('Create new VicePresident');
  }
}

void main() {
  var manager = Manager('Budi');
  print(manager.name);
  var vp = VicePresident('Eko');
  print(vp.name);
}
