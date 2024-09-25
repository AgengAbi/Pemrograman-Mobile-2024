void main() {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1,
    'NIM': '2241720126',
    'Nama': 'Stefanus Ageng Budi Utomo',
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
    'NIM': '2241720126',
    'Nama': 'Stefanus Ageng Budi Utomo',
  };

  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';
  gifts['NIM'] = '2241720126';
  gifts['Nama'] = 'Stefanus Ageng Budi Utomo';

  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';
  nobleGases['NIM'] = '2241720126';
  nobleGases['Nama'] = 'Stefanus Ageng Budi Utomo';

  var mhs1 = Map<String, String>();
  var mhs2 = Map<int, String>();

  mhs1['NIM'] = '2241720126';
  mhs1['Nama'] = 'Stefanus Ageng Budi Utomo';

  mhs2[100] = '2241720126';
  mhs2[101] = 'Stefanus Ageng Budi Utomo';

  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
}
