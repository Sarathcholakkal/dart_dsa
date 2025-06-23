// replace negative number by zero

void main() {
  List<int> list = [3, 5, 23, -2, 4, -55, 6];

  for (int i = 0; i < list.length; i++) {
    if (list[i] < 0) {
      list[i] = 0;
    }
  }
  print(list);
}
