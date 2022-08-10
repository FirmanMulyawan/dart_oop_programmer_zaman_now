// ================= Meta Data
// metadata merupakan fitur yang digunakan untuk menambah informasi tambahan pada kode program yang kita buat
// untuk menambahkan informasi tambahan ke dalam kode program kita, kita bisa menggunakan anotation yang dimulai dengan karakter @ lalu diikuti dengan constant atau memanggil constant constructor

// ================= Standart Annotation
// ===========================================================================================================
// Annotation               | keterangan
// ===========================================================================================================
// @Deprecated              | menandai bahwa kode tersebut sudah tidak direkomendasikan digunakan
// @override                | menandai bahwa field atau method tersebut merupakan overriding dari parent nya
// ===========================================================================================================

// ================= Membuat Annotation
// membuat annotation sangat mudah, kita bisa membuat constant atau bisa membuat class dengan menggunakan constant Constructor

// ================= Manfaat metadata
// saat ini, metadata mungkin tidak terlihat begitu berguna
// namun saat kita sudah belajar tentang reflection, maka kita akan bisa tahu manfaat yang bisa kita dapat ketika menggunakan metadata

class Sample {
  @override
  String toString() {
    return "Sample";
  }

  @Deprecated("Don't use it anymore")
  void doNotCallMe() {}
}

class Todo {
  final String todo;

  const Todo(this.todo);
}

class Application {
  @Todo("Will be implemented next release")
  String? name;

  @Todo("Will be implemented next release")
  void featureA() {}
}
