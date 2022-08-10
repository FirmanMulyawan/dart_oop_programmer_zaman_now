// ================= Super Keyword
// kadang kita ingin mengakses method yang terdapat di class parent yang sudah terlanjur kita override di class child
// untuk mengakses method milik class parent, kita bisa menggunakan kata kunci super
// sederhananya, super digunakan untuk mengakses class parent
// tidak hanya method, field milik parent class pun bisa kita akses menggunakan kata kunci super

class Shape {
  int getCorner() {
    return 0;
  }
}

class Rectangle extends Shape {
  @override
  int getCorner() {
    return 4;
  }

  int getparentCorner() {
    return super.getCorner();
  }
}

void main() {
  var rectangle = Rectangle();

  print(rectangle.getCorner());
  print(rectangle.getparentCorner());
}
