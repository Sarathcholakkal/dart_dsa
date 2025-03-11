void main() {
  List<int> mult = [];
  for (int i = 0; i <= 100; i++) {
    if (i % 5 == 0) {
      mult.add(i);
    }
  }
  print(mult);
}
