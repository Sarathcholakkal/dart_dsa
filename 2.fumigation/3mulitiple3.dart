import 'dart:io';

//!Write a program to move all multiple of three to the end of a given array and remove multiples of 2
void main() {
  stdout.write("Enter the size of an array: ");
  int n = int.parse(stdin.readLineSync()!);

  List<int> a = [];

  stdout.write("Enter the elements of the array:\n");
  for (int i = 0; i < n; i++) {
    a.add(int.parse(stdin.readLineSync()!));
  }

  // Step 1: Move multiples of 3 to the end while maintaining order
  for (int i = 0; i < a.length; i++) {
    if (a[i] % 3 != 0) {
      int temp = a[i];
      for (int j = i; j > 0; j--) {
        a[j] = a[j - 1];
      }
      a[0] = temp;
    }
  }

  // Step 2: Remove multiples of 2
  int i = 0;
  while (i < a.length) {
    if (a[i] % 2 == 0) {
      a.removeAt(i);
    } else {
      i++;
    }
  }

  // Print final array
  print("The final array is: ${a.join(' ')}");
}
//! using function...................................................



// void main() {
//   stdout.write("Enter the size of an array: ");
//   int n = int.parse(stdin.readLineSync()!);

//   List<int> a = [];

//   stdout.write("Enter the elements of the array:\n");
//   for (int i = 0; i < n; i++) {
//     a.add(int.parse(stdin.readLineSync()!));
//   }

   // Step 1: Move multiples of 3 to the end while maintaining order
//   List<int> nonMultiplesOfThree = a.where((x) => x % 3 != 0).toList();
//   List<int> multiplesOfThree = a.where((x) => x % 3 == 0).toList();

  // Combine both lists
//   a = nonMultiplesOfThree + multiplesOfThree;

  // Step 2: Remove multiples of 2
//   a.removeWhere((x) => x % 2 == 0);
  // Print final array
//   print("The final array is: ${a.join(' ')}");
// }
