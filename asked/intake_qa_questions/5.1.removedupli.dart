void main() {
  List<int> nums = [1, 2, 4, 4, 5, 6, 7];
  List<int> result = [];

  List<int> hashlist = List.filled(nums.last, 0);

  for (int i = 0; i < nums.length; i++) {
    hashlist[nums[i]]++;
  }

  for (int i = 0; i < nums.length; i++) {
    if (hashlist[nums[i]] == 1) {
      result.add(nums[i]);
    }
  }

  print(result);
}
