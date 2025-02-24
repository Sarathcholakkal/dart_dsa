void main() {
  int a = 20;
  int b = 309;
  void swap(int a, int b) {
    int temp = a;
    a = b;
    b = temp;
    print("a:$a,b:$b");
  }

  swap(a, b);
}


// void main() {
//   int a = 20;
//   int b = 309;

//   Map<String, int> swap(int a, int b) {
//     int temp = a;
//     a = b;
//     b = temp;
//     return {'a': a, 'b': b}; // Return swapped values as a map
//   }

//   var result = swap(a, b);
//   a = result['a']!;
//   b = result['b']!;

//   print("a: $a, b: $b");
// }