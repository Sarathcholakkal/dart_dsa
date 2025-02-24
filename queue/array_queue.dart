// !Queue Using Array
// Difficulty: BasicAccuracy: 47.24%Submissions: 218K+Points: 1Average Time: 15m
// Implement a Queue using an Array. Queries in the Queue are of the following type:
// (i) 1 x   (a query of this type means  pushing 'x' into the queue)
// (ii) 2     (a query of this type means to pop an element from the queue and print the popped element. If the queue is empty then return -1)

// We just have to implement the functions push and pop and the driver code will handle the output.

// Examples:

// Input: Queries = 1 2 1 3 2 1 4 2
// Output: 2 3
// Explanation: For query 1 2 the queue will be {2} 1 3 the queue will be {2 3} 2   poped element will be 2 the queue will be {3} 1 4 the queue will be {3 4} 2 poped element will be 3
// Input: Queries = 1 3 2 2 1 4
// Output: 3 -1
// Explanation: For query 1 3 the queue will be {3} 2 poped element will be 3 the queue will be empty 2 there is no element in the queue and hence -1 1 4 the queue will be {4}.
// Input: Queries = 1 3 2 2 1 3
// Output: 3 -1
// Explanation: For query 1 3 the queue will be {3} 2 poped element will be 3 the queue will be empty 2 there is no element in the queue and hence -1 1 3 the queue will be {3} and hence -1 1 3 the queue will be {3}.

void main() {
  NewQueue queue = NewQueue();

  queue.push(10);
  queue.push(11);
  queue.push(12);
  queue.push(13);
  queue.push(14);
  queue.push(15);
  queue.push(16);
  queue.push(17);
  queue.push(18);
  print(".......................");
  queue.printQueue();

  queue.pop();

  queue.pop();

  queue.pop();

  print(".......................");
  queue.printQueue();
  print(".......................");
  queue.findSize();
  print(".......................");
}

class NewQueue {
  static int size = 10;
  int currentSize = 0;
  int start = -1;
  int end = -1;
  List<int> qu = List.filled(size, 0);

  void push(int data) {
    if (currentSize == size) {
      print("Queue Overflow");
      return;
    }
    if (currentSize == 0) {
      start = 0;
      end = 0;
    } else {
      end = (end + 1) % size;
    }
    qu[end] = data;
    currentSize++;
  }

  int pop() {
    if (currentSize == 0) {
      return -1; // Return -1 if queue is empty
    }

    int removed = qu[start];

    if (currentSize == 1) {
      start = -1;
      end = -1;
    } else {
      start = (start + 1) % size;
    }

    currentSize--;
    return removed;
  }

  void printQueue() {
    if (currentSize == 0) {
      print("Queue is empty");
      return;
    }

    print("Queue elements: ");
    int i = start;
    for (int count = 0; count < currentSize; count++) {
      print(qu[i]);
      i = (i + 1) % size;
    }
  }

  void findSize() {
    print(currentSize);
  }
}
