void main() {
  // langkah 1
  // var record = ('first', a: 2, b: true, 'last');
  // print(record);

  // langkah 1 - 3
  // var record = (1, 2);
  // print("Sebelum ditukar: ");
  // print(record);
  // print("Setelah ditukar: ");
  // print(tukar(record));

  // langkah 4
  // Record type annotation in a variable declaration:
  // (String, int) mahasiswa = ('Stefanus Ageng Budi Utomo', 2241720126);
  // print(mahasiswa);

  // langkah 5
  var mahasiswa2 =
      ('Stefanus Ageng Budi Utomo', a: 2241720126, b: true, 'last');

  print(mahasiswa2.$1);
  print(mahasiswa2.a);
  print(mahasiswa2.b);
  print(mahasiswa2.$2);
}

(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
