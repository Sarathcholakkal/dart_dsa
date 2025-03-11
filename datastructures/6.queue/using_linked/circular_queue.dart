import 'dart:async';

class Node {
  int data;
  Node? next;
  Node(this.data);
}

class CircularQueue {
  Node? front;
  Node? rear;

  void enqueue(int data) {
    Node newnode = Node(data);

    if (front == null) {
      front = rear = newnode;
      rear!.next = front;
    } else {
      rear!.next = newnode;
      rear = newnode;
      rear!.next = front;
    }
  }

  void dequeue() {
    if (front == null) {
      return;
    }
    if (front == rear) {
      front = rear = null;
    } else {
      front = front!.next;
      rear!.next = front;
    }
  }

  void display() {
    if (front == null) {
      print("queue is empty");
      return;
    }
    Node? current = front;
    do {
      print(current!.data);
      current = current.next;
    } while (current != front);
  }
}

void main() {
  CircularQueue queue = CircularQueue();
  queue.enqueue(1);
  queue.enqueue(2);
  queue.enqueue(3);
  queue.enqueue(4);
  queue.display();

  queue.dequeue();
  queue.display();
}
