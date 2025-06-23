void main(List<String> args) {
  List<int> nums = [2, 7, 11, 15];
  int target = 9;
  // expect output like this index of number in list.

  //! brute Force:

  // for (int i = 0; i < nums.length - 1; i++) {
  //   for (int j = i + 1; j < nums.length; j++) {
  //     if (target == nums[i] + nums[j]) {
  //       print([i, j]);
  //     }
  //   }
  // }

  //! using Hash map

  Map<int, int> tempMap = {};

  for (int i = 0; i < nums.length; i++) {
    int num = nums[i];
    int diff = target - num;
    if (tempMap.containsKey(diff)) {
      print([i, tempMap[diff]!]);
      break;
    }
    tempMap[num] = i;
  }
}
