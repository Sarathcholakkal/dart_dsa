void main() {
  List<int> nums = [1, 2, 4, 4, 5, 6, 7];
  List<int> result = [];

  for (int i = 0; i < nums.length; i++) {
    bool isunique = true;
    for (int j = 0; j < nums.length; j++) {
      if (nums[i] == nums[j] && i != j) {
        isunique = false;
      }
    }
    if (isunique) {
      result.add(nums[i]);
    }
  }
  print(result);
}
