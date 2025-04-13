void main() {
  List<int> arr = [2, 3, 56, 7, 82, 9, 11, 3];

  //! brute force took nlogn + n time complexicity

  arr.sort();
  int largest = arr[arr.length - 1];
  int secondlargest = -1;

  for (int i = arr.length - 2; i >= 0; i--) {
    if (arr[i] != largest) {
      secondlargest = arr[i];
      break;
    }
  }

  // print(secondlargest);

  //! better solution which takes 2n time complexcity

  int betterlargest = arr[0];
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] > betterlargest) {
      betterlargest = arr[i];
    }
  }

  int bettersecondlargest = -1;

  for (int i = 0; i < arr.length; i++) {
    if (bettersecondlargest < arr[i] && arr[i] != betterlargest) {
      bettersecondlargest = arr[i];
    }
  }
  // print(bettersecondlargest);
  //! efficient solution which took only n timecomplexcity , if someone become largest ,old largest would be seocnd largest;

  int efflargest = arr[0];
  int effsecoondlargest = arr[0];
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] > efflargest) {
      effsecoondlargest = efflargest;
      efflargest = arr[i];
    }
  }
  print(effsecoondlargest);
}
