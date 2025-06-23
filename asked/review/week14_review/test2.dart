class Node {
  int data;
  Node? next;
  Node(this.data);
}

class Stack {
  Node? head;

  void deletenode(int data) {
    if (head == null) {
      print("stack is empty");
      return;
    }
    if (head!.data == data) {
      head = head!.next;
      return;
    }

    Node? current = head;
    while (current!.next != null) {
      if (current.next!.data == data) {}
    }
  }
}

int size = 5;
int keytoindex(key) {
  int index = key.hashCode.abs() % size;
  return index;
}
