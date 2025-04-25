import 'dart:io';

//A prime number cannot be divided evenly by any other number except 1 and itself.

void main(List<String> args) {
  List<int> num = [];
  stdout.writeln("please enter the limit of an array");
  int size = int.parse(stdin.readLineSync()!);
  stdout.writeln("enter the elements of array");
  for (int i = 0; i < size; i++) {
    num.add(int.parse(stdin.readLineSync()!));
  }

  for (int i = 0; i < num.length; i++) {
    bool isPrime = true;
    if (num[i] <= 1) {
      isPrime = false;
    } else {
      for (int j = 2; j <= (num[i] ~/ 2); j++) {
        if (num[i] % j == 0) {
          isPrime = false;
        }
      }
    }
    if (isPrime) {
      stdout.write("  ${num[i]}");
    }
  }
}
