void main(List<String> args) {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];

  List<int> odd = [];
  List<int> even = [];

  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] % 2 == 0) {
      even.add(numbers[i]);
    } else {
      odd.add(numbers[i]);
    }
  }
  print(odd);
  print(even);
}
