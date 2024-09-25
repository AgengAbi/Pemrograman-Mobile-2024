void main() {
  // var list = [1, 2, 3];
  // List<int?> list1 = [1, 2, null];
  // var list2 = [0, ...list];
  // var list3 = [0, ...list1];
  // var nim1 = [2, 2, 4, 1, 7];
  // var nim2 = [2, 0, 1, 2, 6];
  // var nim = [...nim1, ...nim2];

  // print(list);
  // print(list1);
  // print(list2);
  // print(list2.length);
  // print(list3.length);
  // print(nim);

  // langkah 4
  // var promoActive = false;
  // var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  // print(nav);

  // langkah 5
  // var login = 'Admin';
  // var nav2 = [
  //   'Home',
  //   'Furniture',
  //   'Plants',
  //   if (login case 'Manager') 'Inventory'
  // ];
  // print(nav2);

  // langkah 6
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
}
