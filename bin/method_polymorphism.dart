// ================= Polymorphism
// Polymorphism berasal dari bahasa yunani yang berarti banyak bentuk.
// dalam oop, polymorphism adalah kemampuan sebuah object berubah bentuk menjadi bentuk lain
// polymorphism erat hubungan nya dengan Inheritance

class Employee {
  String name;

  Employee(this.name);
}

class Manager extends Employee {
  Manager(String name) : super(name);
}

class VicePresident extends Manager {
  VicePresident(String name) : super(name);
}

void sayHello(Employee employee) {
  print('Hello ${employee.name}');
}

void main() {
  sayHello(Employee('Eko'));
  sayHello(Manager('Eko'));
  sayHello(VicePresident('Eko'));
}
