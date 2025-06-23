// adding two array  directly in dynamic array

// void main() {
//   List<int> arr1 = [3, 5, 6, 7, 3];
//   List<int> arr2 = [2, 64, 23, 24, 56];
//   List<int> result = [];

//   for (int i = 0; i < arr1.length; i++) {
//     result.add(arr1[i]);
//   }
//   for (int j = 0; j < arr2.length; j++) {
//     result.add(arr2[j]);
//   }
//   print(result);
// }

//!adding two array to fixed array

void main() {
  List<int> arr1 = [3, 5, 6, 7, 3];
  List<int> arr2 = [2, 64, 23, 24, 56];
  List<int> result = List.filled(arr2.length + arr1.length, 0);

  for (int i = 0; i < arr1.length; i++) {
    result[i] = arr1[i];
  }
  for (int j = 0; j < arr2.length; j++) {
    result[arr1.length + j] = arr2[j];
  }
  print(result);
}
