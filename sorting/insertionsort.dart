void main() {
  List<int> arr = [2, 4, 1, 6, 440, 23, 100];
  insertionSort(arr);

  print(arr);
}

void insertionSort(List<int> arr) {
  for (int i = 1; i < arr.length; i++) {
    int current = arr[i];
    int j = i - 1;
    while (j >= 0 && arr[j] > current) {
      arr[j + 1] = arr[j];
      j--;
    }
    arr[j + 1] = current;
  }
}
