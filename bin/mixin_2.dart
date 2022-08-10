// ================= Mixin
// mixin merupakan reusable code yang bisa digunakan di class lain tanpa harus terkendala dengan pewarisan
// mixin mirip melakukan copy paste code di beberapa tempat, namun dengan cara yang lebih baik
// dengan mixin, kita bisa membuat kode yang sama pada beberapa class
// satu class bisa menambah lebih dari satu mixin, sama seperti interface
// untuk membuat mixin, kita bisa menggunakan kata kunci mixin
// untuk menggunakan mixin, kita bisa menggunakan kata kunci with, diikuti dengan mixinnya

// ================= membatasi Mixin
// secara default, semua class bisa menggunakan mixin
// namun jika kita ingin membatasi hanya class turunan tertentu, kita bisa tambahkan kata kunci on, diikuti dengan class yang kita batasi pada mixin nya

abstract class Multimedia {}

mixin Playable on Multimedia {
  String? name;

  void play() {
    print('Play $name');
  }
}

mixin Stoppable on Multimedia {
  String? name;

  void stop() {
    print('Stop $name');
  }
}

class Video extends Multimedia with Playable, Stoppable {}

class Audio extends Multimedia with Playable, Stoppable {}

void main() {
  var video = Video();
  video.name = 'Belajar Dart';
  video.play();
  video.stop();
}
