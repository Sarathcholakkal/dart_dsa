//!Write a program in C to count even numbers and count prime number

import 'dart:io';

void main() {
  int i, n;
  int evenCount = 0, primeCount = 0;
  bool isPrime;

  // Input: Read the size and elements of the array
  stdout.write("Enter the size of an array: ");
  n = int.parse(stdin.readLineSync()!);

  List<int> a = [];
  stdout.write("Enter the elements of the array:\n");
  for (i = 0; i < n; i++) {
    a.add(int.parse(stdin.readLineSync()!));
  }

  // Logic to count even numbers and prime numbers
  for (i = 0; i < n; i++) {
    isPrime = true;

    // Check if the number is prime
    if (a[i] <= 1) {
      isPrime = false; // 1 and negative numbers are not prime
    } else {
      for (int j = 2; j <= a[i] / 2; j++) {
        if (a[i] % j == 0) {
          isPrime = false;
          break;
        }
      }
    }

    // Count even numbers
    if (a[i] % 2 == 0) {
      evenCount++;
    }

    // Count prime numbers
    if (isPrime) {
      primeCount++;
    }
  }

  // Output: Count of even and prime numbers
  stdout.write("The count of prime numbers is: $primeCount\n");
  stdout.write("The count of even numbers is: $evenCount\n");
}


//!=========using functions===========

