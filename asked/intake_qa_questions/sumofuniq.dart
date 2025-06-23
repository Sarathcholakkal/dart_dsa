void main(List<String> args) {
  List<int> numbers = [1, 0, 2, 2, 3, 1, 3, 4, 7, 5, 6, 7, 8, 9];
  int n = numbers.length;
  bool isduplicate = false;
  int sum = 0;

  for (int i = 0; i < n; i++) {
    isduplicate = false;
    for (int j = 0; j < n; j++) {
      if (numbers[i] == numbers[j] && i != j) {
        isduplicate = true;
      }
    }
    if (!isduplicate) {
      sum += numbers[i];
    }
  }

  print(sum);
}
