//! 26. Remove Duplicates from Sorted Array  leetcode question

void main() {
  List<int> arr = [1, 1, 2, 2, 3, 3, 3];

  // Use a Set to remove duplicates
  Set<int> set = {};

  for (int i = 0; i < arr.length; i++) {
    set.add(arr[i]);
  }

  // Copy unique values back to arr
  int j = 0;
  for (var i in set) {
    arr[j++] = i;
  }

  // Resize the list to contain only unique elements
  arr.length = j;

  print(arr); // Output: [1, 2, 3]

  //! efficient solution using two pointer , which provide n timecomplexcity

  List<int> list = [1, 1, 2, 2, 2, 3, 5, 5];

  int i = 0;
  for (int j = 1; j < list.length; j++) {
    if (list[i] != list[j]) {
      list[i + 1] = list[j];
      i++;
    }
  }
  list.length =
      i + 1; // list length is + 1 than index of last element that why dded 1

  print(list);
}
