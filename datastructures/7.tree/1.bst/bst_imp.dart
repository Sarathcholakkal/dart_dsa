import 'dart:collection';

class TreeNode {
  int data;
  TreeNode? left;
  TreeNode? right;
  TreeNode(this.data);
}

class BinarySearchTree {
  TreeNode? root;

  //! Insert a node
  void insert(int data) {
    TreeNode? currentNode = root;
    if (currentNode == null) {
      root = TreeNode(data);
      return;
    }
    while (true) {
      if (data < currentNode!.data) {
        if (currentNode.left == null) {
          currentNode.left = TreeNode(data);
          break;
        } else {
          currentNode = currentNode.left;
        }
      } else {
        if (currentNode.right == null) {
          currentNode.right = TreeNode(data);
          break;
        } else {
          currentNode = currentNode.right;
        }
      }
    }
  }

  //! Check if data exists in BST
  bool contains(int data) {
    TreeNode? currentNode = root;
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
  void removeHelper(int data, TreeNode? currentNode, TreeNode? parentNode) {
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
          TreeNode? child =
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
  int getMinValue(TreeNode? currentNode) {
    while (currentNode!.left != null) {
      currentNode = currentNode.left;
    }
    return currentNode.data;
  }

  void inorderTraversal(TreeNode? root) {
    if (root == null) {
      return;
    }
    inorderTraversal(root.left);
    print(root.data);
    inorderTraversal(root.right);
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
  tree.inorderTraversal(tree.root);
  print("validate bst");
  print(validateBst(tree.root));
  print("find height of tree");
  // print(findheighoftree(tree.root));
}

//! validate bst

bool validateBst(TreeNode? root) {
  if (root == null) {
    return false;
  }
  void helper(TreeNode? root, List<int> inorderlist) {
    if (root == null) {
      return;
    }

    helper(root.left, inorderlist);
    inorderlist.add(root.data);
    helper(root.right, inorderlist);
  }

  List<int> inorderlist = [];

  helper(root, inorderlist);

  for (int i = 1; i < inorderlist.length; i++) {
    if (inorderlist[i] <= inorderlist[i - 1]) {
      return false;
    }
  }
  return true;
}

//! height of bst

int findheighoftree(TreeNode? root) {
  if (root == null) {
    return -1;
  }
  Queue<TreeNode> queue = Queue();
  int numoflevel = -1;
  queue.add(root);
  while (true) {
    int levelnodes = queue.length;

    if (levelnodes == 0) {
      return numoflevel;
    }
    while (levelnodes > 0) {
      TreeNode node = queue.removeFirst();
      if (node.left != null) {
        queue.add(node.left!);
      }
      if (node.right != null) {
        queue.add(node.right!);
      }
      levelnodes--;
    }
    numoflevel++;
  }
}



// //! break dont for

