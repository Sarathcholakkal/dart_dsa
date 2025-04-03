import 'dart:collection';

//!maximum depth of Binary tree  leetcode 104

class Node {
  int data;
  Node? left;
  Node? right;
  Node(this.data);
}

int heightoftree(Node? root) {
  if (root == null) {
    return -1;
  }

  int numberoflevel = -1;
  Queue<Node> elementqueue = Queue();
  elementqueue.add(root);

  while (true) {
    int nodecountatlevel = elementqueue.length;
    if (nodecountatlevel == 0) {
      return numberoflevel;
    }

    while (nodecountatlevel > 0) {
      Node element = elementqueue.removeFirst();
      if (element.left != null) {
        elementqueue.add(element.left!);
      }
      if (element.right != null) {
        elementqueue.add(element.right!);
      }   

      nodecountatlevel--;
    }
    numberoflevel++;
  }
}

void main() {
  // Creating the tree:
  //       1
  //      / \
  //     2   3
  //    / \
  //   4   5

  Node root = Node(1);
  root.left = Node(2);
  root.right = Node(3);
  root.left!.left = Node(4);
  root.left!.right = Node(5);

  print("Height of the tree: ${heightoftree(root)}"); // Output: 2
}
