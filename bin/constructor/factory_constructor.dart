// ================= Factory Constructor
// factory constructor adalah sebuah feature dimana kita bisa membuat constructor untuk membuat object baru, namun logika cara pembuatan object barunya bisa kita sesuaikan dengan yang kita inginkan
// misal kita ingin mengembalikan object yang sama berkali-kali, kita bisa menggunakan factory constructor
// untuk membuat factory constructor kita bisa menggunakan kata kunci factory sebelum pembuatan constructornya

class Database {
  Database() {
    print('Create new Database connection');
  }

  static Database database = Database();

  factory Database.get() {
    return database;
  }
}

void main() {
  var database1 = Database.get();
  var database2 = Database.get();

  print(database1 == database2);
}
