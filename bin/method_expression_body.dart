// ============= Method Expression Body
// saat membuat method, kadang-kadang kita hanya menggunakan satu baris kode
// jika kita membuat method dengan body yang sangat sederhana, kita bisa gunakan expression body
// expression body mirip seperti ketika kita membuat anonymous function

class Computer {
  // void startup() {
  //   print('Computer is Starting');
  // }

  // ============= Method Expression Body
  void startup() => print('Computer is Starting');

  void shutdown() => print('Computer is shutting down');

  // String getOperatingSystem() {
  //   return "Linux";
  // }
  String getOperatingSystem() => "Linux";
}

void main() {
  var computer = Computer();
  computer.startup();
  computer.shutdown();
  print(computer.getOperatingSystem());
}
