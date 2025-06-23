// //remove duplicate in same array 

// void main(List<String> args) {
//   import 'dart:io';

// void main() {
//   stdout.write("Enter the size of the array: ");
//   int n = int.parse(stdin.readLineSync()!);

//   List<int> a = [];

//   stdout.write("Enter the values of the array: ");
//   for (int i = 0; i < n; i++) {
//     a.add(int.parse(stdin.readLineSync()!));
//   }

//   int i = 0;
//   while (i < n) {
//     bool isDuplicate = false;

//     for (int j = i + 1; j < n; j++) {
//       if (a[i] == a[j]) {
//         isDuplicate = true;
//         break;
//       }
//     }

//     if (isDuplicate) {
//       // Remove element at index `i`
//       a.removeAt(i);
//       n--; // Reduce array size
//       i--; // Re-check the same index since values shifted left
//     }
//     i++;
//   }

//   // Print final array
//   stdout.write("The final array is: ");
//   print(a);
// }

// }
