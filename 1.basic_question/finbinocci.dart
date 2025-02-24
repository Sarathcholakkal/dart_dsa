import 'dart:io';

void main(List<String> args) {
  stdout.writeln("please enter the terms");
  int n = int.parse(stdin.readLineSync()!);
  stdout.writeln("please enter the starting values  of an array");
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);
  stdout.write("$a $b");
  for (int i = 0; i < n; i++) {
    int next = a + b;
    stdout.write("   $next");
    a = b;
    b = next;
  }
}


//===================with function================

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


//0 1 1 2 3 5 