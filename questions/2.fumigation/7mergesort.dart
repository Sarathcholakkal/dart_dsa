//! Write a program to merge two sorted arrays in sorted order ?

import 'dart:io';

void main() {
  int i, j, k = 0, alength, blength;
  List<int> a = [], b = [], c = [];

  // Input: Read the size of the first array
  stdout.write("Enter the size of the first array: ");
  alength = int.parse(stdin.readLineSync()!);

  // Input: Read elements for the first array (sorted)
  stdout.write("Enter the sorted elements of the first array:\n");
  for (i = 0; i < alength; i++) {
    a.add(int.parse(stdin.readLineSync()!));
  }

  // Input: Read the size of the second array
  stdout.write("Enter the size of the second array: ");
  blength = int.parse(stdin.readLineSync()!);

  // Input: Read elements for the second array (sorted)
  stdout.write("Enter the sorted elements of the second array:\n");
  for (j = 0; j < blength; j++) {
    b.add(int.parse(stdin.readLineSync()!));
  }

  // Merging both arrays into a sorted array
  i = 0;
  j = 0;
  while (i < alength && j < blength) {
    if (a[i] < b[j]) {
      c.add(a[i]);
      i++;
    } else {
      c.add(b[j]);
      j++;
    }
  }

  // Adding remaining elements from the first array
  while (i < alength) {
    c.add(a[i]);
    i++;
  }

  // Adding remaining elements from the second array
  while (j < blength) {
    c.add(b[j]);
    j++;
  }

  // Output: Final merged sorted array
  stdout.write("The final sorted array is: ");
  for (i = 0; i < c.length; i++) {
    stdout.write("${c[i]} \t");
  }
  print("");
}


//! using functions



// void main() {
//   int alength, blength;

//   // Input: Read the size and elements of the first array
//   stdout.write("Enter the size of the first array: ");
//   alength = int.parse(stdin.readLineSync()!);
//   List<int> a = [];
//   stdout.write("Enter the sorted elements of the first array:\n");
//   for (int i = 0; i < alength; i++) {
//     a.add(int.parse(stdin.readLineSync()!));
//   }

//   // Input: Read the size and elements of the second array
//   stdout.write("Enter the size of the second array: ");
//   blength = int.parse(stdin.readLineSync()!);
//   List<int> b = [];
//   stdout.write("Enter the sorted elements of the second array:\n");
//   for (int j = 0; j < blength; j++) {
//     b.add(int.parse(stdin.readLineSync()!));
//   }

//   // Merging the two sorted lists
//   List<int> mergedList = []..addAll(a)..addAll(b);
  
//   // Sorting the merged list (if not already sorted)
//   mergedList.sort();

//   // Output: Final merged and sorted array
//   stdout.write("The final sorted array is: ");
//   for (int i = 0; i < mergedList.length; i++) {
//     stdout.write("${mergedList[i]} \t");
//   }
//   print("");
// }
