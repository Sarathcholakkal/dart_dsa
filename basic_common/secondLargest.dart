import 'dart:io';

void main(List<String> args) {
  List<int> num = [];
  stdout.writeln("Please enter the limit of an array:");
  int size = int.parse(stdin.readLineSync()!);
  stdout.writeln("Enter the elements of the array:");

  for (int i = 0; i < size; i++) {
    num.add(int.parse(stdin.readLineSync()!));
  }

  int largest = -1;
  int secondLargest = -1;

  for (int i = 0; i < size; i++) {
    if (num[i] > largest) {
      secondLargest = largest;
      largest = num[i];
    } else if (num[i] > secondLargest && num[i] != largest) {
      // Update secondLargest if it's greater than secondLargest and not equal to largest
      secondLargest = num[i];
    }
  }

  if (secondLargest != -1) {
    print("The second largest number is: $secondLargest");
  } else {
    print("No second largest number found.");
  }
}
