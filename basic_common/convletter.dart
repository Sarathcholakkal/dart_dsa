void main() {
  String letter = 'A';
  int asciiValue = letter.codeUnitAt(0);
  print(asciiValue);
  String letter1 = String.fromCharCode(asciiValue);
  print(letter1);
}

// void main() {
//   String s = "Hello";
//   // int total = input
//   //     .split('')
//   //     .map((char) => char.codeUnitAt(0))
//   //     .reduce((sum, ascii) => sum + ascii);

//   int total = s
//       .split('')
//       .map((char) => char.codeUnitAt(0))
//       .reduce((currentSum, nextNum) => currentSum + nextNum);
//   print("Total ASCII sum: $total");
// }
