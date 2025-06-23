class Node {
  int data;
  int priority;
  Node? next;
  Node(this.data, this.priority);
}

class PriorityQueue {
  Node? top;
  void enqueue(int data, int priority) {
    Node newNode = Node(data, priority);
    if (top == null || top!.priority < priority) {
      newNode.next = top;
      top = newNode;
    } else {
      Node? temp = top;
      while (temp!.next != null && temp.next!.priority >= priority) {
        temp = temp.next;
      }
      newNode.next = temp.next;
      temp.next = newNode;
    }
  }

  void removeDUb() {
    if (top == null) {
      return;
    }
    Node? temp = top;
    while (temp != null) {
      Node? current = temp;
      while (current!.next != null) {
        if (current.next!.data == temp.data) {
          current.next = current.next!.next;
        } else {
          current = current.next;
        }
      }
      temp = temp.next;
    }
  }

  void display() {
    if (top == null) return;
    Node? temp = top;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}

void main() {
  PriorityQueue p = PriorityQueue();
  p.enqueue(20, 2);
  p.enqueue(40, 4);
  p.enqueue(30, 3);
  p.enqueue(10, 1);
  p.enqueue(20, 2);
  p.enqueue(40, 4);
  p.enqueue(30, 3);
  p.enqueue(10, 1);
  p.removeDUb();
//   p.display();
}
