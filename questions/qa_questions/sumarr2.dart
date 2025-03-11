void main() {
  List<int> numbers = [1, 0, 2, 2, 3, 1, 3, 4, 7, 5, 6, 7, 8, 9];
  int sum = 0;

  for (int i = 0; i < numbers.length; i++) {
    sum += numbers[i];
  }
  print(sum);
}
