// void main(List<String> args) {
//   int n = 10;
//   List<int> fibinocciList = gernerateFibinocci(n);
//   print(fibinocciList);
// }

// List<int> gernerateFibinocci(int n) {
//   List<int> fibList = [0, 1];
//   for (int i = 2; i < n; i++) {
//     fibList.add(fibList[i - 2] + fibList[i - 1]);
//   }
//   return fibList;
// }

void main() {
  List<int> generateFibinocci(int n) {
    List<int> fiblist = [0, 1];

    for (int i = 2; i < n; i++) {
      fiblist.add(fiblist[i - 1] + fiblist[i - 2]);
    }
    return fiblist;
  }

  print(generateFibinocci(10));
}
