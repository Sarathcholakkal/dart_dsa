void main() {
  int num = 10;
  List<int> result = [];
  for (int i = 0; i <= num; i++) {
    if (isprime(i)) {
      result.add(i);
    }
  }
  print(result);
}

bool isprime(int i) {
  if (i <= 1) {
    return false;
  } else {
    for (int j = 2; j <= i ~/ 2; j++) {
      if (i % j == 0) {
        return false;
      }
    }
  }
  return true;
}
