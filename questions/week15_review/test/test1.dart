class MinHeap {
  List<int> heap = [];
  MinHeap();
  MinHeap.list(List<int> arr) {
    buildheap(arr);
  }

  int parente(int index) {
    return (index - 1) ~/ 2;
  }

  int leftchild(int index) {
    return (index * 2) + 1;
  }

  int rightchild(int index) {
    return (index * 2) + 2;
  }

  void swap(List<int> heap, int i, int j) {
    int temp = heap[i];
    heap[i] = heap[j];
    heap[j] = temp;
  }

  void shiftdown(int parentindex) {
    int endindex = heap.length - 1;

    int leftindex = leftchild(parentindex);

    while (leftindex <= endindex) {
      int rightindex = rightchild(parentindex);
      int indextoshift = leftindex;

      if (rightindex <= endindex && heap[rightindex] < heap[endindex]) {
        indextoshift = rightindex;
      }
      if (heap[parentindex] < heap[indextoshift]) {
        break;
      }
      swap(heap, parentindex, indextoshift);
      parentindex = indextoshift;
      leftindex = leftchild(parentindex);
    }
  }

  void shiftup(int childindex) {
    int parentindex = parente(childindex);
    while (childindex > 0 && heap[parentindex] < heap[childindex]) {
      swap(heap, parentindex, childindex);
      childindex = parentindex;
      parentindex = parente(childindex);
    }
  }

  void buildheap(List<int> arr) {
    heap = arr.toList();
    for (int i = parente(heap.length - 1); i >= 0; i--) {
      shiftdown(i);
    }
  }

  void insert(int data) {
    heap.add(data);
    if (heap.isNotEmpty) {
      shiftup(heap.length - 1);
    }
  }
}
