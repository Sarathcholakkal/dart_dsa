import 'dart:io';

//! //Find the element that appears more than n/2 times in the array.
// void main() {
//   stdout.write("Enter the size of an array: ");
//   int n = int.parse(stdin.readLineSync()!);

//   List<int> a = [];
//   List<int> freq = List.filled(n, 0); // Frequency tracking array
//   bool flag = false;

//   stdout.write("Enter the values of an array:\n");
//   for (int i = 0; i < n; i++) {
//     a.add(int.parse(stdin.readLineSync()!));
//   }

//   for (int i = 0; i < n; i++) {
//     if (freq[i] == -1) continue; // Skip already processed elements

//     int count = 1;
//     for (int j = i + 1; j < n; j++) {
//       if (a[i] == a[j]) {
//         count++;
//         freq[j] = -1; // Mark duplicates to avoid reprocessing
//       }
//     }

//     if (count > n / 2) {
//       flag = true;
//       print("The value that repeats more than n/2 times is: ${a[i]}");
//       break; // Since there can be only one majority element, exit early
//     }
//   }

//   if (!flag) {
//     print("No number's frequency is above n/2.");
//   }
// }
//! using basic list functions

void main() {
  stdout.write("Enter the size of an array: ");
  int n = int.parse(stdin.readLineSync()!);

  List<int> a = [];

  stdout.write("Enter the values of an array:\n");
  for (int i = 0; i < n; i++) {
    a.add(int.parse(stdin.readLineSync()!));
  }

  int? majorityElement = findMajorityElement(a, n);

  if (majorityElement != null) {
    print("The value that repeats more than n/2 times is: $majorityElement");
  } else {
    print("No number's frequency is above n/2.");
  }
}

int? findMajorityElement(List<int> arr, int n) {
  Map<int, int> freqMap = {};

  // Count frequency using list functions
  for (int num in arr) {
    freqMap[num] = (freqMap[num] ?? 0) + 1;
  }

  // Check for the majority element
  for (var entry in freqMap.entries) {
    if (entry.value > n ~/ 2) {
      return entry.key;
    }
  }

  return null; // No majority element found
}
