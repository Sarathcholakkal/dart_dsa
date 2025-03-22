class Node {
  int data;
  Node? left, right;
  Node(this.data);
}

class BinarySearchTree {
  Node? root;

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

  bool containsData(int data) {
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

  // Searching in BST
  bool contains(int value) {
    return _containsRec(root, value);
  }

  bool _containsRec(Node? node, int value) {
    if (node == null) return false;
    if (node.data == value) return true;

    return value < node.data
        ? _containsRec(node.left, value)
        : _containsRec(node.right, value);
  }

  void remove(int data) {
    removeHelper(data, root, null);
  }

  void removeHelper(int data, Node? currentNode, Node? parentNode) {
    while (currentNode != null) {
      //if data is less than the currentnode changing the parentdata
      if (data < currentNode.data) {
        parentNode = currentNode;
        currentNode = currentNode.left;
      } else if (data > currentNode.data) {
        parentNode = currentNode;
        currentNode = currentNode.right;
      } else {
        //if the node has left and child node
        if (currentNode.left != null && currentNode.right != null) {
          // we will replce the smalllest value from right
          currentNode.data = getMinValue(currentNode.right);
          removeHelper(currentNode.data, currentNode.right, currentNode);
        } else {
          //Checking one of the child node is null
          // first case is root root have not parent node
          if (parentNode == null) {
            //checking whether if if the root have childnodes in left or right
            if (currentNode.right == null) {
              root = currentNode.left;
            } else {
              root = currentNode.right;
            }
            //it have parentnode
          } else {
            //checking if parent node have no rigth value node
            if (parentNode.left == currentNode) {
              //we are removing the value of currentnode by assigning currentnode.left
              if (currentNode.right == null) {
                parentNode.left = currentNode.left;
              } else {
                parentNode.left = currentNode.right;
              }
            } else {
              if (currentNode.right == null) {
                parentNode.right = currentNode.left;
              } else {
                parentNode.right = currentNode.right;
              }
            }
          }
        }
        break;
      }
    }
  }

//get min value
  int getMinValue(Node? currentNode) {
    if (currentNode?.left == null) {
      return currentNode!.data;
    } else {
      return getMinValue(currentNode?.left);
    }
  }

  // Deletion in BST
  Node? delete(int value) {
    return _deleteRec(root, value);
  }

  Node? _deleteRec(Node? node, int value) {
    if (node == null) return null;

    if (value < node.data) {
      node.left = _deleteRec(node.left, value);
    } else if (value > node.data) {
      node.right = _deleteRec(node.right, value);
    } else {
      // Node with only one child or no child
      if (node.left == null)
        return node.right;
      else if (node.right == null) return node.left;

      // Node with two children: Get inorder successor
      node.data = _minValue(node.right!);
      node.right = _deleteRec(node.right, node.data);
    }
    return node;
  }

  int _minValue(Node node) {
    int minValue = node.data;
    while (node.left != null) {
      minValue = node.left!.data;
      node = node.left!;
    }
    return minValue;
  }

  void inOrder() {
    inOrderHelper(root);
  }

  void inOrderHelper(Node? node) {
    if (node != null) {
      inOrderHelper(node.left);
      print(node.data);
      inOrderHelper(node.right);
    }
  }

  void preOrder() {
    preOrderHelper(root);
  }

  void preOrderHelper(Node? node) {
    if (node != null) {
      print(node.data);
      preOrderHelper(node.left);
      preOrderHelper(node.right);
    }
  }

  void postOrder() {
    postOrderHelper(root);
  }

  void postOrderHelper(Node? node) {
    if (node != null) {
      postOrderHelper(node.left);
      postOrderHelper(node.right);
      print(node.data);
    }
  }

  int? findMinAdjacentValue(int target) {
    Node? current = root;
    int? closest = current?.data;
    while (current != null) {
      if ((target - closest!).abs() > (target - current.data).abs()) {
        closest = current.data;
      }
      if (target < current.data) {
        current = current.left;
      } else if (target > current.data) {
        current = current.right;
      } else {
        break;
      }
    }
    return closest;
  }
}

void main() {
  BinarySearchTree bts = BinarySearchTree();
  bts.insert(10);
  bts.insert(8);
  bts.insert(11);
  print(bts.containsData(8));

  print("deleting 8,if it contains ");
  // bts.remove(8);
  print(bts.containsData(8));
  bts.inOrder();
  bts.preOrder();
  bts.postOrder();
}


//  perut  