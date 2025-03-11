class Node {
  int data;
  Node? next;

  Node(this.data);
}

class SlinkedList {
  Node? head;
  Node? tail;

  void addNode(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
      tail = newNode;
    } else {
      tail!.next = newNode;
      tail = newNode;
    }
  }

  void display() {
    if (head == null) {
      print("empty");
      return;
    }
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  void delete(int data) {
    if (head == null) return;

    // If head node is to be deleted
    if (head!.data == data) {
      head = head!.next;
      if (head == null) {
        tail = null; // Update tail if list becomes empty
      }
      return;
    }

    Node? temp = head;
    Node? prev;

    while (temp != null && temp.data != data) {
      prev = temp;
      temp = temp.next;
    }

    // If node was not found
    if (temp == null) return;

    // If tail node is to be deleted
    if (temp == tail) {
      tail = prev;
      tail!.next = null;
      return;
    }

    // Unlink the node
    prev!.next = temp.next;
  }

  void inserAfter(int nextTo, int data) {
    Node? newNode = Node(data);
    Node? temp = head;
    while (temp != null && temp.data != nextTo) {
      temp = temp.next;
    }
    if (temp == null) {
      return;
    }
    if (temp == tail) {
      tail!.next = newNode;
      tail = newNode;
      return;
    }
    newNode.next = temp.next;
    temp.next = newNode;
  }
}

void main() {
  SlinkedList list = SlinkedList();
  list.addNode(10);
  list.addNode(20);
  list.addNode(30);
  list.addNode(40);

  print("Original List:");
  list.display();

  // list.delete(30);
  // print("After deleting 30:");
  // list.display();

  // list.delete(10);
  // print("After deleting head (10):");
  // list.display();

  // list.delete(40);
  // print("After deleting tail (40):");
  // list.display();

  // list.delete(20);
  // print("After deleting last remaining node (20):");
  list.inserAfter(10, 15);
  list.display();
}
