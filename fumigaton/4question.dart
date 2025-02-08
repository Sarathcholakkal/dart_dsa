//!Write a program in C to sort an array in descending order to the left from middle and in ascending order to the right from middle.

import 'dart:io';

void main() {
  // Declare variables
  int i, j, n, half, temp;
  List<int> a = [];

  // Input: Read the size of the array
  stdout.write("Enter the size of an array: ");
  n = int.parse(stdin.readLineSync()!);

  // Input: Read array elements
  stdout.write("Enter the elements of the array:\n");
  for (i = 0; i < n; i++) {
    a.add(int.parse(stdin.readLineSync()!));
  }

  half = n ~/ 2; // Find the middle index

  // Sorting logic (same as C)
  for (i = 0; i < n; i++) {
    if (i < half) {
      for (j = i + 1; j < n; j++) {
        if (a[i] < a[j]) {
          temp = a[i];
          a[i] = a[j];
          a[j] = temp;
        }
      }
    } else {
      for (j = i + 1; j < n; j++) {
        if (a[i] > a[j]) {
          temp = a[i];
          a[i] = a[j];
          a[j] = temp;
        }
      }
    }
  }

  // Print final array
  stdout.write("The final array is: ");
  for (i = 0; i < n; i++) {
    stdout.write("${a[i]} \t");
  }
  print(""); // Newline for better formatting
}

//! using functions..............

// void main() {
//   // Input: Read the size of the array
//   stdout.write("Enter the size of an array: ");
//   int n = int.parse(stdin.readLineSync()!);

//   // Input: Read array elements
//   List<int> a = [];
//   stdout.write("Enter the elements of the array:\n");
//   for (int i = 0; i < n; i++) {
//     a.add(int.parse(stdin.readLineSync()!));
//   }

//   int half = n ~/ 2; // Find the middle index

//   // Sort left half in descending order
//   a.setRange(0, half, (a.sublist(0, half)..sort((b, c) => c.compareTo(b))));

//   // Sort right half in ascending order
//   a.setRange(half, n, (a.sublist(half)..sort()));

//   // Print final array
//   print("The final array is: ${a.join(' ')}");
// }
