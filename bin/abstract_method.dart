// ================= Abstract method
// saat kita membuat class yang abstract, kita bisa membuat abstract method juga didalam class abstract tersebut
// saat kita membuat sebuah abstract method, kita tidak boleh membuat block method untuk method tersebut
// artinya, abstract method wajib di override di class child

abstract class Animal {
  String? name;

  void run();
}

class Cat extends Animal {
  @override
  void run() {
    print('Cat $name is running');
  }
}

void main() {
  var cat = Cat();

  cat.name = 'Puss';
  cat.run();
}
