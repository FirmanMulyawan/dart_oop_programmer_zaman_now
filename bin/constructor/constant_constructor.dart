// ================= Constant Constructor
// saat kita membuat class yang tidak pernah berubah datanya (immutable data), ada baiknya kita buat costructornya dalam bentuk cosntant
// untuk membuat constant constructor kita bisa gunakan kata kunci const
// keuntungan saat menggunakan constant constructor adalah ketika kita membuat constant object, secara otomatis object yang sama akan digunakan

class ImmutablePoint {
  final int x;
  final int y;

  const ImmutablePoint(this.x, this.y);
}

void main() {
  // pakai const
  var point1 = const ImmutablePoint(10, 10);
  var point2 = const ImmutablePoint(10, 10);

  print(point1 == point2);
}
