void main() {
  Stack newStack = Stack();
  newStack.push(1);
  newStack.push(2);
  newStack.push(3);
  newStack.push(4);
  newStack.push(5);
  newStack.display();

  print("\nDeleting 3...");
  newStack.deleteNode(3);
  newStack.display();

  print("\nDeleting 5...");
  newStack.deleteNode(5);
  newStack.display();
}

class Node {
  int data;
  Node? next;
  Node(this.data);
}

class Stack {
  Node? top;

  void push(int data) {
    Node newNode = Node(data);
    newNode.next = top;
    top = newNode;
  }

  void display() {
    Node? current = top;
    if (current == null) {
      print("Stack is empty");
      return;
    }
    while (current != null) {
      print("${current.data}");
      current = current.next;
    }
  }

  void pop() {
    if (top == null) {
      return;
    }
    top = top!.next;
  }

  void deleteNode(int value) {
    if (top == null) {
      print("Stack is empty");
      return;
    }

    // If top node is the target node
    if (top!.data == value) {
      top = top!.next;
      return;
    }

    Node? current = top;
    while (current!.next != null) {
      if (current.next!.data == value) {
        current.next = current.next!.next;
        return;
      }
      current = current.next;
    }
    print("Value $value not found in stack.");
  }
}
