# Null Safety

Null Safety adalah fitur dalam bahasa pemrograman Dart yang mencegah kesalahan akibat penggunaan nilai null. Sebelum ada Null Safety, salah satu masalah besar yang sering ditemui dalam pemrograman adalah null reference error atau null pointer exception. Ini terjadi ketika program mencoba mengakses atau menggunakan nilai yang seharusnya ada, tetapi ternyata bernilai null. Hal ini bisa menyebabkan program crash atau berhenti tiba-tiba.

Dengan Null Safety, Dart memastikan bahwa variabel non-nullable (variabel yang tidak boleh null) harus memiliki nilai sebelum digunakan. Null Safety membantu programmer menghindari error tersebut dengan memberlakukan aturan bahwa jika variabel dideklarasikan sebagai non-nullable, dia tidak akan pernah bisa berisi null kecuali secara eksplisit diizinkan.


### Cara Null Safety Bekerja
#### Nullable
``` dart
void main() {
  // variabel ini non-nullable, jadi harus ada nilainya sebelum digunakan
  String namaMahasiswa;
  namaMahasiswa = "Mulyono";
  print(namaMahasiswa); // output: Mulyono
}
```
Jika menggunakan variable namaMahasiswa tanpa menginisialisasinya:
#### Non-Nullable
``` dart
void main() {
  String nama;
  print(nama);  //  Error: Non-nullable variable 'nama' must be assigned before it can be used.
}
```

### 3 Operator Null Safety
|Operator|Nama|Deskripsi|
|---:|---|---|
|?|Nullable|Digunakan untuk mendeklarasikan variabel yang boleh bernilai null|
|!|Bang Operator|Digunakan untuk mendeklarasikan sebuah variabel yang tidak boleh bernilai null|
|Late|First Read|Mendeklarasikan bahwa sebuah variabel baru pertama kali diinisialisasi dan biasanya digabung dengan final|

#### Nullable
Nullable merupakan kebalikan dari non-nullable. Variable nullable adalah variabel yang diizinkan bernilai null. Dalam Dart, jadi kita dapat membuat sebuah variabel menjadi nullable dengan menambahkan tanda tanya `?` setelah tipe data variabel tersebut.

``` dart
void main(){
    String? namaMahasiswa;
    namaMahasiswa = null; //bisa diisi null, karena variabel ini nullable
    print(namaMahasiswa); // output: null
}
```

#### Bang Operator
Bang Operator (!) digunakan untuk memberi tahu Dart bahwa kita yakin variabel yang sedang diakses tidak null pada saat itu. Operator ini digunakan pada variabel nullable untuk menyatakan bahwa kita percaya variabel tersebut memiliki nilai yang valid, meskipun Dart tidak bisa memastikannya secara otomatis.

``` dart
void main(){
    String? namaMahasiswa;
    namaMahasiswa = 'Paijo';
    print(namaMahasiswa!); // output: Paijo

    String? email;
    print(email!); // error: Null check operator used on a null value
}
```

#### Late
Late variabel digunakan ketika kita ingin menunda inisialisasi sebuah variabel hingga pertama kali diakses, tetapi tetap memastikan bahwa variabel itu akan diinisialisasi sebelum digunakan. Ini berguna ketika kita yakin bahwa variabel tersebut pasti akan diberi nilai nanti, namun belum saat objeknya dibuat.

``` dart
class Mahasiswa {
  late String nama;

  void isiNama(String nama) {
    this.nama = nama;
  }

  void perkenalan() {
    print('Halo, nama saya $nama');
  }
}

void main() {
  Mahasiswa mhs = Mahasiswa();
  mhs.isiNama('Rina'); // Inisialisasi variabel late
  mhs.perkenalan(); // Output: Halo, nama saya Rina
}
```

### Tambahan
### Null-Aware Operator
Null-aware mengacu pada fitur dan operator yang membantu kita menangani variabel nullable dengan aman. Null-aware operators memungkinkan kita untuk mengelola nilai null dengan cara yang lebih bersih dan terhindar dari error yang dapat disebabkan oleh nilai null.

Macam - macam null-aware:
1. Null-Aware Operator `??`
2. Null-Aware Assignment Operator `??=`
3. Safe Call Operator `?.`
4. Null-Aware Spread Operator `...?`

#### 1. Null-Aware Operator `??`
Memberikan nilai default jika variabel nullable bernilai null
``` dart
void main() {
  String? nama;
  String sapa = nama ?? "Budi";
  print(sapa); // output: Budi
}
```
#### 2. Null-Aware Assignment Operator `??=`
``` dart
void main() {
  String? email;
  email ??= 'default@example.com'; // Jika email null, beri nilai default
  print(email); // output: default@example.com
}
```
#### 3. Safe Call Operator `?.`
``` dart
void main() {
  String? nama;
  int? panjangNama = nama?.length; // Jika nama null, panjangNama juga akan null
  print(panjangNama); // output: null
}
```
#### 4. Null-Aware Spread Operator `...?`
``` dart
void main() {
  List? listPertama;
  List? listKedua;
  List? listKetiga;

  listPertama = [1, 2, 3];
  // jika listKedua null, tidak akan tertambah
  listKetiga = [...listPertama, ...?listKedua];
  print(listKetiga); // output: [1, 2, 3]
}
```

Link PPT : [Klik disini](https://docs.google.com/presentation/d/1OpFbgnXpHWCzP-Qa3Sc7-5rRVlHqPJvIT3tqGgWSsYo/edit?usp=sharing)

Di tulis oleh :
1. Stefanus Ageng Budi Utomo
2. Aji Hamdani Ahmad