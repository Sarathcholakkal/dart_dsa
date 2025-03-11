void main(List<String> args) {
  List<int> num = [5, 7, 0, 3, 4, 2, 6, 1, 4, 8, 2, 9, 0, 4, 5];

  num.sort((a, b) => a.compareTo(b));
  print(num);

  num.sort((a, b) => b.compareTo(a));
  print(num);

  Map<int, int> occur = {};

  for (int el in num) {
    occur[el] = (occur[el] ?? 0) + 1;
  }

  for (var entry in occur.entries) {
    if (entry.value > 1) {
      print("${entry.key}:${entry.value}");
    }
  }
}
