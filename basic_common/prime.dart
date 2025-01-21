import 'dart:io';

void main(List<String> args) {
  List<int> num = [];
  stdout.writeln("please enter the limit of an array");
  int size = int.parse(stdin.readLineSync()!);
  stdout.writeln("enter the elements of array");
  for (int i = 0; i < size; i++) {
    num.add(int.parse(stdin.readLineSync()!));
  }

  for (int i = 0; i < size; i++) {
    bool isPrime = true;
    if (num[i] <= 1) {
      isPrime = false;
    } else {
      for (int j = 2; j <= (num[i] / 2); j++) {
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

// 1 2 3 4 5 6 7 

// prime     
//
//
//  17    1  false
//   16<  15  9   16 =>    

//===============using function==========================



// void main(List<String> args) {
//   List<int> num = [];
//   stdout.write("enter the size of an list");
//   int size = int.parse(stdin.readLineSync()!);
//   stdout.write("enter the value of list");
//   for (int i = 0; i < size; i++) {
//     num.add(int.parse(stdin.readLineSync()!));
//   }

//   List<int> primeList = num.where((element) => isPrimeNum(element)).toList();
//   primeList.forEach((element) => stdout.writeln(" $element"));
// }

// bool isPrimeNum(int element) {
//   if (element <= 1) {
//     return false;
//   }
//   for (int i = 2; i <= element ~/ 2; i++) {
//     if (element % i == 0) {
//       return false;
//     }
//   }

//   return true;
// }

