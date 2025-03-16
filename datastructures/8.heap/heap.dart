// class MinHeap {
//   MinHeap() {}
//   List<int> heap = [];
//   //! named constructor which convert arr to heap
//   MinHeap.list(List<int> arr) {
//     buildHeap(arr);
//   }
// // !convert input array to heap
//   void buildHeap(List<int> arr) {
//     heap = arr;
//     for (int i = parent(heap.length - 1); i >= 0; i--) {
//       shiftDown(i);
//     }
//   }

//   //!element move to lower part of tree
//   // void shiftDown(int parentindex) {
//   //   int endindex = heap.length - 1;
//   //   int leftindex = leftchild(parentindex);
//   //   while (leftindex <= endindex) {
//   //     //
//   //     int rightindex = rightchild(parentindex);
//   //     int indextoshift;
//   //     if (rightindex < endindex && heap[rightindex] < heap[leftindex]) {
//   //       indextoshift = rightindex;
//   //     } else {
//   //       indextoshift = leftindex;
//   //     }
//   //     if (heap[parentindex] > heap[indextoshift]) {
//   //       swap(heap, parentindex, indextoshift);
//   //       parentindex = indextoshift;
//   //       leftindex = leftchild(parentindex);
//   //     } else {
//   //       return;
//   //     }
//   //   }
//   // }

//   void shiftDown(int parentIndex) {
//     int endIndex = heap.length - 1; // Last index of the heap
//     int leftIndex = leftchild(parentIndex); // Get left child index

//     while (leftIndex <= endIndex) {
//       // Continue if there is a left child
//       int rightIndex = rightchild(parentIndex);
//       int indexToShift;

//       // Find the smaller child
//       if (rightIndex <= endIndex && heap[rightIndex] < heap[leftIndex]) {
//         indexToShift = rightIndex;
//       } else {
//         indexToShift = leftIndex;
//       }

//       // If parent is smaller than the smallest child, stop
//       if (heap[parentIndex] < heap[indexToShift]) {
//         return;
//       }

//       // Swap and continue shifting down
//       swap(heap, parentIndex, indexToShift);
//       parentIndex = indexToShift;
//       leftIndex = leftchild(parentIndex);
//     }
//   }

//   //! element move to upper part of tree

//   void shifUp(int childindex) {
//     int parentindex = parent(childindex);
//     while (childindex > 0 && heap[parentindex] > heap[childindex]) {
//       swap(heap, childindex, parentindex);
//       childindex = parentindex;
//       parentindex = parent(childindex);
//     }
//   }

//   //!  to get top value of heap

//   int peek() {
//     return heap[0];
//   }
//   //! remove top element

//   void remove() {
//     swap(heap, 0, heap.length - 1);
//     heap.removeAt(heap.length - 1);
//     shiftDown(0);
//   }

//   //! insert a element
//   void insert(int value) {
//     heap.add(value);
//     shifUp(heap.length - 1);
//   }

//   //! find parent equation
//   int parent(int i) {
//     return (i - 1) ~/ 2;
//   }

//   //!find left child
//   int leftchild(int i) {
//     return (i * 2) + 1;
//   }

//   //! find right child
//   int rightchild(int i) {
//     return (i * 2) + 2;
//   }

//   //! display the  heap like loop the array
//   void display() {
//     for (int i = 0; i < heap.length; i++) {
//       print(heap[i]);
//     }
//   }

//   swap(List<int> heap, int currentindex, int indextoshift) {
//     int temp = heap[currentindex];
//     heap[currentindex] = heap[indextoshift];
//     heap[indextoshift] = temp;
//   }
// }

// void main() {
//   List<int> arr = [6, 2, 8];

//   MinHeap heap = MinHeap.list(arr);
//   heap.display();
//   print("---------------");
//   heap.insert(1);
//   heap.insert(5);
//   heap.insert(15);
//   heap.display();
//   print("---------------");
//   heap.remove();
//   heap.display();
// }

class MinHeap {
  List<int> heap = [];

  MinHeap();

  //! Named constructor to build heap from a list
  MinHeap.list(List<int> arr) {
    buildHeap(arr);
  }

  //! Convert input array to heap
  void buildHeap(List<int> arr) {
    heap = arr.toList(); // Ensure a copy is used
    for (int i = parent(heap.length - 1); i >= 0; i--) {
      shiftDown(i);
    }
  }

  //! Move element down the tree to maintain heap property
  void shiftDown(int parentIndex) {
    int endIndex = heap.length - 1; // Last index
    int leftIndex = leftchild(parentIndex);

    while (leftIndex <= endIndex) {
      int rightIndex = rightchild(parentIndex);
      int indexToShift = leftIndex;

      // Choose the smaller child
      if (rightIndex <= endIndex && heap[rightIndex] < heap[leftIndex]) {
        indexToShift = rightIndex;
      }

      // Stop if parent is already smaller
      if (heap[parentIndex] <= heap[indexToShift]) break;

      // Swap and continue shifting down
      swap(heap, parentIndex, indexToShift);
      parentIndex = indexToShift;
      leftIndex = leftchild(parentIndex);
    }
  }

  //! Move element up the tree to maintain heap property
  void shiftUp(int childIndex) {
    // Fix function name
    int parentIndex = parent(childIndex);
    while (childIndex > 0 && heap[parentIndex] > heap[childIndex]) {
      swap(heap, childIndex, parentIndex);
      childIndex = parentIndex;
      parentIndex = parent(childIndex);
    }
  }

  //! Get top value of the heap (minimum element)
  int peek() {
    if (heap.isEmpty) throw Exception("Heap is empty");
    return heap[0];
  }

  //! Remove top element
  void remove() {
    if (heap.isEmpty) return; // Handle empty heap
    swap(heap, 0, heap.length - 1);
    heap.removeAt(heap.length - 1);
    if (heap.isNotEmpty) shiftDown(0);
  }

  //! Insert an element
  void insert(int value) {
    heap.add(value);
    shiftUp(heap.length - 1);
  }

  //! Find parent index
  int parent(int i) => (i - 1) ~/ 2;

  //! Find left child index
  int leftchild(int i) => (i * 2) + 1;

  //! Find right child index
  int rightchild(int i) => (i * 2) + 2;

  //! Display the heap
  void display() {
    print(heap);
  }

  //! Swap two elements in the heap
  void swap(List<int> heap, int i, int j) {
    int temp = heap[i];
    heap[i] = heap[j];
    heap[j] = temp;
  }
}

void main() {
  List<int> arr = [6, 2, 8];

  MinHeap heap = MinHeap.list(arr);
  heap.display();
  print("---------------");
  heap.insert(1);
  heap.insert(5);
  heap.insert(15);
  heap.display();
  print("---------------");
  heap.remove();
  heap.display();
}
