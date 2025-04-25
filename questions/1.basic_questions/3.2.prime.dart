main() {
  List<int> list = [1, 2, 3, 4, 34, 23, 12, 4];
  List<int> result = [];

  for (int i = 0; i < list.length; i++) {
    if (isprime(list[i])) {
      result.add(list[i]);
    }
  }

  print(result);
}

bool isprime(int num) {
  if (num <= 1) {
    return false;
  } else {
    for (int j = 2; j <= num ~/ 2; j++) {
      if (num % j == 0) {
        return false;
      }
    }
  }
  return true;
}
