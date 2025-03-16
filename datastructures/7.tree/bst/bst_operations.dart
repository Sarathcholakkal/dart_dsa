class Node {
  int data;
  Node? left;
  Node? right;
  Node(this.data);
}

class BinarySearchTree {
  Node? root;

  //! Insert a node
  void insert(int data) {
    Node? currentNode = root;
    if (currentNode == null) {
      root = Node(data);
      return;
    }
    while (true) {
      if (data < currentNode!.data) {
        if (currentNode.left == null) {
          currentNode.left = Node(data);
          break;
        } else {
          currentNode = currentNode.left;
        }
      } else {
        if (currentNode.right == null) {
          currentNode.right = Node(data);
          break;
        } else {
          currentNode = currentNode.right;
        }
      }
    }
  }

  //! Check if data exists in BST
  bool contains(int data) {
    Node? currentNode = root;
    while (currentNode != null) {
      if (data < currentNode.data) {
        currentNode = currentNode.left;
      } else if (data > currentNode.data) {
        currentNode = currentNode.right;
      } else {
        return true;
      }
    }
    return false;
  }

  //! Remove a node from BST
  void remove(int data) {
    removeHelper(data, root, null);
  }

  //! Remove helper function
  void removeHelper(int data, Node? currentNode, Node? parentNode) {
    while (currentNode != null) {
      if (data < currentNode.data) {
        parentNode = currentNode;
        currentNode = currentNode.left;
      } else if (data > currentNode.data) {
        parentNode = currentNode;
        currentNode = currentNode.right;
      } else {
        // Case 1: Node has two children
        if (currentNode.left != null && currentNode.right != null) {
          currentNode.data = getMinValue(currentNode.right);
          removeHelper(currentNode.data, currentNode.right, currentNode);
        } else {
          // Case 2 & 3: Node has one or no children
          Node? child =
              (currentNode.left != null) ? currentNode.left : currentNode.right;
          if (parentNode == null) {
            root = child;
          } else if (parentNode.left == currentNode) {
            parentNode.left = child;
          } else {
            parentNode.right = child;
          }
          break;
        }
      }
    }
  }

  //! Get the minimum value of a subtree
  int getMinValue(Node? currentNode) {
    while (currentNode!.left != null) {
      currentNode = currentNode.left;
    }
    return currentNode.data;
  }
}

//! Main function
void main() {
  BinarySearchTree tree = BinarySearchTree();
  tree.insert(10);
  tree.insert(30);
  tree.insert(20);
  tree.insert(40);
  tree.insert(5);
  tree.insert(15);
  print(tree.contains(10)); // true
  print(tree.contains(25)); // false
  tree.remove(30);
  print(tree.contains(30)); // false
}
