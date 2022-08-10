// ================= Enum
// enum merupakan feature untuk membuat tipe data yang sudah jelas nilainya
// untuk membuat enum, kita bisa menggunakan kata kunci enum

enum CustomerLevel { regular, premium, vip }

class Customer {
  String name;
  CustomerLevel level;

  Customer(this.name, this.level);
}

void main() {
  var customer = Customer("Eko", CustomerLevel.vip);

  print(customer.name);
  print(customer.level);

  print(CustomerLevel.values);
}
