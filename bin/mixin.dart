// ================= Mixin
// mixin merupakan reusable code yang bisa digunakan di class lain tanpa harus terkendala dengan pewarisan
// mixin mirip melakukan copy paste code di beberapa tempat, namun dengan cara yang lebih baik
// dengan mixin, kita bisa membuat kode yang sama pada beberapa class
// satu class bisa menambah lebih dari satu mixin, sama seperti interface
// untuk membuat mixin, kita bisa menggunakan kata kunci mixin
// untuk menggunakan mixin, kita bisa menggunakan kata kunci with, diikuti dengan mixinnya

mixin Playable {
  String? name;

  void play() {
    print('Play $name');
  }
}

mixin Stoppable {
  String? name;

  void stop() {
    print('Stop $name');
  }
}

class Video with Playable, Stoppable {}

class Audio with Playable, Stoppable {}
