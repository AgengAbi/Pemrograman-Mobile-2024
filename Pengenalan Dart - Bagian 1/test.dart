// Cara kerja null safety

// Non-Nullable
// void main() {
//   // variabel ini non-nullable, jadi harus ada nilainya sebelum digunakan
//   String namaMahasiswa;
//   namaMahasiswa = "Mulyono";
//   print(namaMahasiswa); // output: Mulyono
// }

// Nullable
// void main() {
//   String nama;
//   print(nama);  //  Error: Non-nullable variable 'nama' must be assigned before it can be used.
// }

// Contoh Nullable
// void main() {
//   String? namaMahasiswa;
//   namaMahasiswa = null; // bisa diisi null, karena variable ini nullable
//   print(namaMahasiswa); // output: null
// }

// // Contoh Bang Operator
// void main() {
//   String? namaMahasiswa;
//   namaMahasiswa = 'Paijo';
//   print(namaMahasiswa!); // output: Paijo

//   String? email;
//   print(email!); // error: Null check operator used on a null value
// }

// // Late
// class Mahasiswa {
//   late String nama;

//   void isiNama(String nama) {
//     this.nama = nama;
//   }

//   void perkenalan() {
//     print('Halo, nama saya $nama');
//   }
// }

// void main() {
//   Mahasiswa mhs = Mahasiswa();
//   mhs.isiNama('Rina'); // Inisialisasi variabel late
//   mhs.perkenalan(); // Output: Halo, nama saya Rina
// }

// class Mahasiswa {
//   late final String nama;

//   Mahasiswa(String nama) {
//     this.nama = nama; // Inisialisasi satu kali
//   }
// }

// void main() {
//   Mahasiswa mhs = Mahasiswa('Rina');
//   print(mhs.nama); // Output: Rina
//   // mhs.nama = 'Rina Baru'; // Ini akan menyebabkan error karena variabel final
// }

// Null-aware Operator
// void main() {
//   String? nama;
//   String sapa = nama ?? "Budi";
//   print(sapa); // output: Budi
// }

// Null-Aware Assignment Operator(??=)
// void main() {
//   String? email;
//   email ??= 'default@example.com'; // Jika email null, beri nilai default
//   print(email); // output: default@example.com
// }

// // Safe Call Operator
// void main() {
//   String? nama;
//   int? panjangNama = nama?.length; // Jika nama null, panjangNama juga akan null
//   print(panjangNama); // output: null
// }

// Null-Aware Spread Operator
void main() {
  List? listPertama;
  List? listKedua;
  List? listKetiga;

  listPertama = [1, 2, 3];
  // jika listKedua null, tidak akan tertambah
  listKetiga = [...listPertama, ...?listKedua];
  print(listKetiga); // output: [1, 2, 3]
}
