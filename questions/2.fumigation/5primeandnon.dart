import 'dart:io';
//! // Write a program to separate prime and non-prime numbers in separate arrays

bool isPrime(int num) {
  // Check if number is prime
  if (num <= 1) {
    return false;
  }
  for (int i = 2; i <= num ~/ 2; i++) {
    if (num % i == 0) {
      return false;
    }
  }
  return true;
}

void main() {
  int i, n;
  List<int> a = [], prime = [], nonPrime = [];

  // Input: Read the size of the array
  stdout.write("Enter the size of an array: ");
  n = int.parse(stdin.readLineSync()!);

  // Input: Read array elements
  stdout.write("Enter the elements of the array:\n");
  for (i = 0; i < n; i++) {
    a.add(int.parse(stdin.readLineSync()!));
  }

  // Separate prime and non-prime numbers
  for (i = 0; i < n; i++) {
    if (isPrime(a[i])) {
      prime.add(a[i]);
    } else {
      nonPrime.add(a[i]);
    }
  }

  // Output prime numbers
  stdout.write("The prime number array is: ");
  for (i = 0; i < prime.length; i++) {
    stdout.write("${prime[i]} \t");
  }
  print("");

  // Output non-prime numbers
  stdout.write("The non-prime number array is: ");
  for (i = 0; i < nonPrime.length; i++) {
    stdout.write("${nonPrime[i]} \t");
  }
  print("");
}
