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

void main() {
  Employee employee = Employee('Eko');
  print(employee);

// Polymorphism
  employee = Manager('Eko');
  print(employee);

  employee = VicePresident('Eko');
  print(employee);
}
