import 'dart:io';

//! remove duplicates
void main() {
  stdout.write("Enter the size of an array: ");
  int n = int.parse(stdin.readLineSync()!);

  List<int> a = [];

  stdout.write("Enter the values of an array:\n");
  for (int i = 0; i < n; i++) {
    int value = int.parse(stdin.readLineSync()!);
    a.add(value);
  }

  a = removeDuplicates(a);

  stdout.write("The final array is: ");
  print(a);
}

List<int> removeDuplicates(List<int> arr) {
  List<int> uniqueList = [];
  for (int num in arr) {
    if (!uniqueList.contains(num)) {
      uniqueList.add(num);
    }
  }
  return uniqueList;
}
