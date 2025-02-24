import 'dart:io';

void main() {
  int i, n, m;
  List<int> a = [], b = [], c = [];

  // Input: Read the size and elements of the first array
  stdout.write("Enter the size of the first array: ");
  n = int.parse(stdin.readLineSync()!);
  stdout.write("Enter the elements of the first array:\n");
  for (i = 0; i < n; i++) {
    a.add(int.parse(stdin.readLineSync()!));
  }

  // Input: Read the size and elements of the second array
  stdout.write("Enter the size of the second array: ");
  m = int.parse(stdin.readLineSync()!);
  stdout.write("Enter the elements of the second array:\n");
  for (i = 0; i < m; i++) {
    b.add(int.parse(stdin.readLineSync()!));
  }

  // Merging both unsorted arrays into one
  for (i = 0; i < n + m; i++) {
    if (i < n) {
      c.add(a[i]);
    } else {
      c.add(b[i - n]);
    }
  }

  // Output: Final merged array (unsorted)
  stdout.write("The final merged array is: ");
  for (i = 0; i < c.length; i++) {
    stdout.write("${c[i]} \t");
  }
  print("");
}


//! unsorted merge-----------------------------------------


// void main() {
//   int n, m;

//   // Input: Read the size and elements of the first array
//   stdout.write("Enter the size of the first array: ");
//   n = int.parse(stdin.readLineSync()!);
//   List<int> a = [];
//   stdout.write("Enter the elements of the first array:\n");
//   for (int i = 0; i < n; i++) {
//     a.add(int.parse(stdin.readLineSync()!));
//   }

//   // Input: Read the size and elements of the second array
//   stdout.write("Enter the size of the second array: ");
//   m = int.parse(stdin.readLineSync()!);
//   List<int> b = [];
//   stdout.write("Enter the elements of the second array:\n");
//   for (int i = 0; i < m; i++) {
//     b.add(int.parse(stdin.readLineSync()!));
//   }

//   // Merging the two unsorted arrays
//   List<int> mergedList = []..addAll(a)..addAll(b);

//   // Output: Final merged array (unsorted)
//   stdout.write("The final merged array is: ");
//   for (int i = 0; i < mergedList.length; i++) {
//     stdout.write("${mergedList[i]} \t");
//   }
//   print("");
// }
