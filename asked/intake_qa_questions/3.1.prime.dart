import 'dart:io';

void main(List<String> args) {
  List<int> num = [];
  stdout.write("enter the size of an list");
  int size = int.parse(stdin.readLineSync()!);
  stdout.write("enter the value of list");
  for (int i = 0; i < size; i++) {
    num.add(int.parse(stdin.readLineSync()!));
  }

  List<int> primeList = num.where((element) => isPrimeNum(element)).toList();
  primeList.forEach((element) => stdout.writeln(" $element"));
}

bool isPrimeNum(int element) {
  if (element <= 1) {
    return false;
  }
  for (int i = 2; i <= element ~/ 2; i++) {
    if (element % i == 0) {
      return false;
    }
  }

  return true;
}
