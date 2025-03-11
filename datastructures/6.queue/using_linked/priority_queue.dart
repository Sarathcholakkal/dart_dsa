// void main() {
//   PriorityQueue queue = PriorityQueue();

//   queue.enqueue(2, 100);
//   queue.enqueue(1, 200);
//   queue.enqueue(3, 50);
//   queue.enqueue(2, 150);

//   queue.display();

//   print("\nDequeued: ${queue.dequeue()}");
//   queue.display();
// }

// class Node {
//   int priority;
//   int data;
//   Node? next;

//   Node(this.priority, this.data);
// }

// class PriorityQueue {
//   Node? front;
//   Node? rear;

//   void enqueue(int priority, int data) {
//     Node newNode = Node(priority, data);

//     if (front == null || priority < front!.priority) {
//       // Insert at front if it's the highest priority
//       newNode.next = front;
//       front = newNode;
//       if (rear == null) rear = front;
//     } else {
//       // Insert in sorted order based on priority
//       Node? current = front;
//       while (current!.next != null && current.next!.priority <= priority) {
//         current = current.next;
//       }
//       newNode.next = current.next;
//       current.next = newNode;
//       if (newNode.next == null) rear = newNode;
//     }
//   }

//   int? dequeue() {
//     if (front == null) {
//       print("Queue is empty");
//       return null;
//     }

//     int removedData = front!.data;
//     front = front!.next;
//     if (front == null) rear = null; // If empty after dequeuing

//     return removedData;
//   }

//   void display() {
//     if (front == null) {
//       print("Queue is empty");
//       return;
//     }

//     Node? current = front;
//     while (current != null) {
//       print("Data: ${current.data}, Priority: ${current.priority}");
//       current = current.next;
//     }
//   }
// }

class Node {
  int data;
  int priority;
  Node? next;
  Node(this.data, this.priority);
}

class PriorityQueue {
  Node? front;
  Node? rear;
  void enqueue(int data, int priority) {
    Node newnode = Node(data, priority);

    if (front == null || front!.priority > priority) {
      newnode.next = front;
      front = newnode;
      if (rear == null) {
        rear = front;
      }
    } else {
      Node? current = front;
      while (current!.next != null || current!.next!.priority < priority) {
        current = current.next;
      }
      newnode.next = current.next;
      current.next = newnode;
      if (newnode.next == null) {
        rear = newnode;
      }
    }
  }

  void dequeue() {
    if (front == null) {
      return;
    }
    front = front!.next;
    if (front == null) {
      rear = null;
    }
  }

  void display() {
    if (front == null) {
      return;
    }
    Node? current = front;

    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}
