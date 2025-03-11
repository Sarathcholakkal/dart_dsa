void main(List<String> args) {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];

  var list = numbers.where(isprimeNumber);
  print(list);
}

bool isprimeNumber(int num) {
  if (num <= 1) {
    return false;
  } else {
    for (int i = 2; i <= num ~/ 2; i++) {
      if (num % i == 0) {
        return false;
      }
    }
  }
  return true;
}
