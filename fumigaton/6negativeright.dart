//!Write a program to move all negative numbers to right and positive numbers to left in an array

import 'dart:io';

void main() {
  int i, j, n, temp;
  List<int> a = [];

  // Input: Read the size of the array
  stdout.write("Enter the size of an array: ");
  n = int.parse(stdin.readLineSync()!);

  // Input: Read array elements
  stdout.write("Enter the elements of the array:\n");
  for (i = 0; i < n; i++) {
    a.add(int.parse(stdin.readLineSync()!));
  }

  // Move all positive numbers to the left and negative numbers to the right
  for (i = 0; i < n; i++) {
    if (a[i] >= 0) {
      temp = a[i];
      for (j = i; j > 0; j--) {
        a[j] = a[j - 1];
      }
      a[0] = temp;
    }
  }

  // Output: Final array
  stdout.write("The final array is: ");
  for (i = 0; i < n; i++) {
    stdout.write("${a[i]} \t");
  }
  print("");
}


//! using functions....................................

// void main() {
//   int n;
//   List<int> a = [];

//   // Input: Read the size of the array
//   stdout.write("Enter the size of an array: ");
//   n = int.parse(stdin.readLineSync()!);

//   // Input: Read array elements
//   stdout.write("Enter the elements of the array:\n");
//   for (int i = 0; i < n; i++) {
//     a.add(int.parse(stdin.readLineSync()!));
//   }

//   // Move all positive numbers to the left and negative numbers to the right
//   a.sort((x, y) => x.compareTo(y));

//   // Output: Final array
//   stdout.write("The final array is: ");
//   for (int i = 0; i < n; i++) {
//     stdout.write("${a[i]} \t");
//   }
//   print("");
// }

