class Treenode {
  int val;
  Treenode? left;
  Treenode? right;
  Treenode(this.val);
}

void main() {}

class Maxheap {
  List<int> heap = [];
  Maxheap();
  Maxheap.list(List<int> arr) {
    buildheap(arr);
  }

  void buildheap(List<int> arr) {
    heap = arr.toList();
    for (int i = parent(heap.length - 1); i >= 0; i--) {
      shiftDown(i);
    }
  }

  void shiftDown(int parentidex) {
    int endindex = heap.length - 1;
    int leftindex = leftchild(parentidex);
    while (leftindex <= endindex) {
      int rightindex = rightchild(parentidex);
      int indextoshift = leftindex;

      if (rightindex <= endindex && heap[rightindex] > heap[leftindex]) {
        indextoshift = rightindex;
      }

      if (heap[parentidex] > heap[indextoshift]) {
        break;
      }
      swap(heap, parentidex, indextoshift);
      parentidex = indextoshift;
      leftindex = leftchild(parentidex);
    }
  }

  void shiftUP(int childindex) {
    int endindex = heap.length;
  }

  int parent(int index) {
    return (index - 1) ~/ 2;
  }

  int leftchild(int index) {
    return (2 * index) + 1;
  }

  int rightchild(int index) {
    return (2 * index) + 2;
  }

  void swap(List<int> heap, int i, int j) {
    int temp = heap[i];
    heap[i] = heap[j];
    heap[j = temp];
  }
}
