void main(List<String> args) {
  List<int> numbers = [1, 0, 2, 2, 3, 1, 3, 4, 7, 5, 6, 7, 8, 9];

  int output = numbers.reduce((acc, el) => acc + el);
  print(output);
}
