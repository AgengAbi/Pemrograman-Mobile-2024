bool isPrime(int number) {
  if (number < 2) {
    return false;
  }
  for (var i = 2; i <= number ~/ 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}

void main() {
  List<int> primeNumber = [];

  for (var i = 2; i <= 201; i++) {
    if (isPrime(i)) {
      primeNumber.add(i);
    }
  }

  if (primeNumber.isNotEmpty) {
    print("Prime Number : $primeNumber");
    print("Nama : Stefanus Ageng Budi Utomo\nNIM : 2241720126");
  }
}
