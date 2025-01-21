//Find the element that appears more than n/2 times in the array.

import 'dart:io';

void main() {
  List<int> a = [];
  bool flag = false;

  stdout.write("Enter the size of the array: ");
  int n = int.parse(stdin.readLineSync()!);

  // Read the elements of the array
  stdout.write("Enter the values of the array: ");
  for (int i = 0; i < n; i++) {
    int value = int.parse(stdin.readLineSync()!);
    a.add(value);
  }
  for (int i = 0; i < n ~/ 2; i++) {
    int count = 1;
    for (int j = i + 1; j < n; j++) {
      if (a[i] == a[j]) {
        count++;
      }
    }
    if (count > n ~/ 2) {
      print(a[i]);
      flag = true;
      break;
    }
  }
  if (!flag) {
    print("No number has a frequency above n/2.");
  }
}
