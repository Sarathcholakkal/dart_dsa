void main(List<String> args) {
  List<int> numbers = [1, 0, 2, 2, 3, 1, 3, 4, 7, 5, 6, 7, 8, 9];

  // Removing all duplicates element in list manually while maintaining order

  List<int> result = [];

  int n = numbers.length;
  bool isduplicate = false;
  for (int i = 0; i < numbers.length; i++) {
    isduplicate = false;
    for (int j = 0; j < numbers.length; j++) {
      if (numbers[i] == numbers[j] && i != j) {
        isduplicate = true;
        break;
      }
    }
    if (!isduplicate) {
      result.add(numbers[i]);
    }
  }

  print(result);
}
