// class MaxHeap {
//   List<int> heap = [];
//   MaxHeap();

//   MaxHeap.list(List<int> arr) {
//     buildHeap(arr);
//   }

//   int parent(int index) {
//     return (index - 1) ~/ 2;
//   }

//   int leftchild(int index) {
//     return (index * 2) + 1;
//   }

//   int rightchild(int index) {
//     return (index * 2) + 2;
//   }

//   void swap(List<int> heap, int i, int j) {
//     int temp = heap[i];
//     heap[i] = heap[j];
//     heap[j] = temp;
//   }

//   void buildHeap(List<int> arr) {
//     heap = arr.toList();
//     for (int i = parent(heap.length - 1); i >= 0; i--) {
//       shiftDown(i);
//     }
//   }

//   void shiftDown(int parentindex) {
//     int endindex = heap.length - 1;
//     int leftindex = leftchild(parentindex);

//     while (leftindex <= endindex) {
//       int rightindex = rightchild(parentindex);
//       int indextoshift = leftindex;

//       if (rightindex <= endindex && heap[rightindex] > heap[leftindex]) {
//         indextoshift = rightindex;
//       }

//       if (heap[parentindex] >= heap[indextoshift]) {
//         break;
//       }

//       swap(heap, parentindex, indextoshift);
//       parentindex = indextoshift;
//       leftindex = leftchild(parentindex);
//     }
//   }

//   void shiftUp(int childindex) {
//     int parentindex = parent(childindex);
//     while (childindex > 0 && heap[parentindex] < heap[childindex]) {
//       swap(heap, parentindex, childindex);
//       childindex = parentindex;
//       parentindex = parent(childindex);
//     }
//   }

//   int remove() {
//     swap(heap, 0, heap.length - 1);
//     int maxvalue = heap.removeAt(heap.length - 1);
//     if (heap.isNotEmpty) shiftDown(0);
//     return maxvalue;
//   }

//   void insert(int value) {
//     heap.add(value);
//     shiftUp(heap.length - 1);
//   }

//   void display() {
//     print(heap);
//   }

//   List<int> heapSort() {
//     List<int> sortedList = [];
//     while (heap.isNotEmpty) {
//       sortedList.add(remove());
//     }
//     return sortedList;
//   }
// }

// void main() {
//   List<int> arr = [5, 3, 8, 4, 2, 7, 1];
//   MaxHeap maxHeap = MaxHeap.list(arr);
//   print("Heap: ");
//   maxHeap.display();
//   print("Sorted array using Heap Sort: ");
//   print(maxHeap.heapSort());
// }

import 'dart:math';

class Maxheap {
  List<int> heap = [];
  Maxheap(List<int> arr) {
    buildheap(arr);
  }

  int parent(int index) {
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
      if (rightindex <= endindex && heap[rightindex] > heap[leftindex]) {
        indextoshift = rightindex;
      }
      if (heap[parentindex] > heap[indextoshift]) {
        break;
      }
      swap(heap, indextoshift, parentindex);
      parentindex = indextoshift;
      leftindex = leftchild(parentindex);
    }
  }

  void shiftup(int childindex) {
    int parentindex = parent(childindex);
    while (childindex > 0 && heap[parentindex] < heap[childindex]) {
      swap(heap, parentindex, childindex);
      childindex = parentindex;
      parentindex = parent(childindex);
    }
  }

  void buildheap(List<int> arr) {
    heap = arr.toList();
    for (int i = parent(heap.length - 1); i >= 0; i--) {
      shiftdown(i);
    }
  }

  void insert(int value) {
    heap.add(value);
    shiftup(heap.length - 1);
  }

  int remove() {
    if (heap.isNotEmpty) swap(heap, heap.length - 1, 0);

    int maxvalue = heap.removeLast();
    if (heap.isNotEmpty) shiftdown(0);
    return maxvalue;
  }

  List<int> heapSort() {
    List<int> heapsort = [];

    while (heap.isNotEmpty) {
      heapsort.add(remove());
    }
    return heapsort;
  }

  void display() {
    print(heap);
  }
}

void main() {
  List<int> arr = [5, 3, 8, 4, 2, 7, 1];
  Maxheap maxHeap = Maxheap(arr);
  print("Heap: ");
  maxHeap.display();
  print("Sorted array using Heap Sort: ");
  print(maxHeap.heapSort());
}
