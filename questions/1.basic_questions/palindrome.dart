import 'dart:io';

// void main(List<String> args) {
//   print("enter a string value");
//   String name = stdin.readLineSync()!;
//   bool isPalindrome = true;
//   for (int i = 0; i < =(name.length ~/ 2); i++) {
//     if (name[i] != name[(name.length - 1 - i)]) {
//       isPalindrome = false;
//     }
//   }

//   if (isPalindrome) {
//     print("given string is palindrome");
//   } else {
//     print("given string is not palindrome");
//   }
// }

//===================== using function===================

void main() {
  print("enter a stirg value ");
  String name = stdin.readLineSync()!;
  String lowerCaseName = name.toLowerCase();

  String reversedname = lowerCaseName.split("").reversed.join("");
  if (reversedname == lowerCaseName) {
    print("the String is pallindrome");
  } else {
    print("the string is not palindrome");
  }
}



//  i=0  str[0]==str[length-1-i]// true
// i=1 str[0]==str[length-1-i]
//~/ ==
    

  