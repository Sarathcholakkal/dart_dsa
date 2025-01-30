import 'dart:io';

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
