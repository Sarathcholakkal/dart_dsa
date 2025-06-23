void quicksort(List<int> nums, int begin, int end) {
  if (begin < end) {
    int partition = findparttion(nums, begin, end);
    quicksort(nums, begin, partition - 1);
    quicksort(nums, partition + 1, end);
  }
}

int findparttion(List<int> nums, int begin, int end) {
  int pivot = nums[end];
  int i = begin - 1;

  for (int j = begin; j < end; j++) {
    if (nums[j] < pivot) {
      i++;

      swap(nums, i, j);
    }
  }
  swap(nums, i + 1, end);
  return i + 1;
}

void swap(List<int> nums, int i, int j) {
  int temp = nums[i];
  nums[i] = nums[j];
  nums[j] = temp;
}

void main() {
  List<int> nums = [4, 2, 5, 23, 56, 12, 45];
   
}
