// ================= initializer List
// saat kita membuat costructor atau named costructor, terdapat feature yang bernama initializer list
// initializer list merupakan tempat dimana kita bisa mengubah field pada object, sebelum block body costructor
// hal ini menjadi lebih mudah dibanding mengubah field di dalam block constructor

class Customer {
  String firstName = '';
  String lastName = '';
  String fullName = '';

  Customer(this.fullName)
      : firstName = fullName.split(" ")[0],
        lastName = fullName.split(" ")[1] {
    print("Create new customer");
  }
}

void main() {
  var customer = Customer("Eko Kurniawan");
  print(customer.fullName);
  print(customer.firstName);
  print(customer.lastName);
}
