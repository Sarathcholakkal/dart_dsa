main() {
  List<int> evenlist = [];
  List<int> oddList = [];
  for (int i = 0; i < 10; i++) {
    if (i % 2 == 0) {
      evenlist.add(i);
    } else {
      oddList.add(i);
    }
  }
  print(evenlist);
  print(oddList);
}
