import 'dart:io';

void main(List<String> args) {
  // stdout.writeln("please enter the terms");
  // int n = int.parse(stdin.readLineSync()!);
  // stdout.writeln("please enter the starting values  of an array");
  // int a = int.parse(stdin.readLineSync()!);
  // int b = int.parse(stdin.readLineSync()!);
  // stdout.write("$a $b");
  int a = 2;
  int b = 3;
  int n = 10;
  for (int i = 0; i < n; i++) {
    int next = a + b;
    stdout.write("   $next");
    a = b;
    b = next;
  }
}
  






//0 1 1 2 3 5 



// Here's how it works:

// Start with 0 and 1

// Next number: 0 + 1 = 1

// Next number: 1 + 1 = 2

// Next number: 1 + 2 = 3

// And so on...

