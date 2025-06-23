class Node {
  int data;
  Node? next;
  Node(this.data);
}

class CircularQueue {
  Node? top;
  Node? rear;
  void enqueue(int data) {
    Node newNode = Node(data);
    if (top == null) {
      top = newNode;
      rear = newNode;
      rear!.next = top;
    } else {
      rear!.next = newNode;
      rear = newNode;
      rear!.next = top;
    }
  }

  void dequeue() {
    if (top == null) {
      return;
    }
    top = top!.next;
    rear!.next = top;
  }

  void display() {
    if (top == null) return;
    Node? temp = top;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
      if (temp == top) return;
    }
  }

  void removeDub() {
    if (top == null) return;
    Node? temp = top;
    while (temp != null) {
      Node? current = temp;
      while (current!.next != null) {
        if (temp.data == current.next!.data) {
          temp.next = current.next!.next;
        } else {
          current = current.next;
        }
      }
      current.next = top;
      rear = current;
      temp = temp.next;
    }
  }
}

void main() {
  CircularQueue c = CircularQueue();
  c.enqueue(10);
  c.enqueue(20);
  c.enqueue(30);
  c.enqueue(40);
  c.enqueue(50);

  c.enqueue(10);
  c.enqueue(20);
  c.enqueue(30);
  c.enqueue(40);
  c.enqueue(50);
  c.removeDub();
  c.display();
}
