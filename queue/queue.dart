void main() {
  Queue queue = Queue();
  queue.enqueue(1);
  queue.enqueue(2);
  queue.enqueue(3);
  queue.enqueue(4);
  queue.display();

  queue.dequeue();
  queue.display();
}

class Node {
  int data;
  Node? next;
  Node(this.data);
}

class Queue {
  Node? front;
  Node? rear;

  void enqueue(int data) {
    Node newNode = Node(data);
    if (front == null) {
      front = rear = newNode;
    } else {
      rear!.next = newNode;
      rear = newNode;
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
    Node? current = front;

    if (current == null) {
      print("empty");
      return;
    }

    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}
