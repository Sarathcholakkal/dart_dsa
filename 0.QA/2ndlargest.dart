import 'dart:io';
import 'dart:math';

void main() {
  List<int> num = [];
  stdout.writeln("Please enter the limit of an array:");
  int size = int.parse(stdin.readLineSync()!);
  stdout.writeln("Enter the elements of the array:");

  for (int i = 0; i < size; i++) {
    num.add(int.parse(stdin.readLineSync()!));
  }

  int largest = num[0];
  int secondLarget = num[0];
  for (int i = 0; i < num.length; i++) {
    if (num[i] > largest) {
      secondLarget = largest;
      largest = num[i];
    } else if (num[i] > secondLarget && num[i] != largest) {
      secondLarget = num[i];
    }
  }
  print(secondLarget);
  print(largest);
}
