void main() {
  List<int> arr = [20, 30, 110, 56, 23, 65, 87];

  selectionSort(arr);

  print(arr); // Output: [20, 23, 30, 56, 65, 87, 110]
}

void selectionSort(List<int> arr) {
  for (int i = 0; i < arr.length; i++) {
    int min = i;
    for (int j = i + 1; j < arr.length; j++) {
      if (arr[j] < arr[i]) {
        min = j;
      }
    }
    if (i != min) {
      int temp = arr[i];
      arr[i] = arr[min];
      arr[min] = temp;
    }
  }
}
