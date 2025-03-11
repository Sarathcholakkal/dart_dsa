//remove duplicate using containe

void main(List<String> args) {
  List<int> numbers = [1, 0, 2, 2, 3, 1, 3, 4, 7, 5, 6, 7, 8, 9];
  List<int> result = [];

  for (int i = 0; i < numbers.length; i++) {
    if (!result.contains(numbers[i])) {
      result.add(numbers[i]);
    }
  }

  print(result);
}
