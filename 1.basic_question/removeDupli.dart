import 'dart:io';

// void main(List<String> args) {
//   List<int> num = [];
//   List<int> unique = [];
//   stdout.write("enter the size of an array");
//   int size = int.parse(stdin.readLineSync()!);
//   stdout.write("enter the values of an List");
//   for (int i = 0; i < size; i++) {
//     num.add(int.parse(stdin.readLineSync()!));
//   }

//   for (int i = 0; i < size; i++) {
//     bool isUnique = true;
//     for (int j = i + 1; j < size; j++) {
//       if (num[i] == num[j]) {
//         isUnique = false;
//       }
//     }

//     if (isUnique) {
//       unique.add(num[i]);
//       // print(num[i]);
//     }
//   }
//   unique.forEach((element) => stdout.writeln(element));
// }

// 1 2 2 3 4 4 5
//==============using functions==============

// void main(List<String> args) {
//   List<int> a = [];

//   print("enter the size  of array");
//   int n = int.parse(stdin.readLineSync()!);
//   stdout.write("enter the elements  of array");
//   for (int i = 0; i < n; i++) {
//     a.add(int.parse(stdin.readLineSync()!));
//   }
//   List<int> uniqueNumber = [];
//   for (int e in a) {
//     if (!uniqueNumber.contains(e)) {
//       uniqueNumber.add(e);
//     }
//   }

//   uniqueNumber.forEach((element) => stdout.writeln("  $element"));
// }

void main(List<String> args) {
  List<int> nums = [];
  List<int> unique = [];

  stdout.write("please enter the size of an array");
  int size = int.parse(stdin.readLineSync()!);
  stdout.write("entert the elements of list");

  for (int i = 0; i < size; i++) {
    nums[i] = int.parse(stdin.readLineSync()!);
  }

// for(int i=0; i<size;i++){

//   bool isUnique=true;

//    for(int j=i+1;i<size;j++){
//     if(nums[i]==nums[j]){

//       isUnique=false;
//     }

// }
//    if(isUnique){

//       unique.add(nums[i]);
//    }

// }

// unique.forEach((element)=>stdout.writeln(element));

// }

//=============================\

  for (int i = 0; i < size; i++) {
    if (!unique.contains(nums[i])) {
      unique.add(nums[i]);
    }
  }

  unique.forEach((element) => stdout.write(element));
}
