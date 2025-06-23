import '../../../asked/review/week15_review/test1.dart';

class TreeNode {
  int data;
  TreeNode? left;
  TreeNode? right;
  TreeNode(this.data);
}

class Bst {
  TreeNode? root;
  void insert(int data) {
    TreeNode newnode = TreeNode(data);
    if (root == null) {
      root = newnode;
      return;
    }

    TreeNode? currentNode = root;

    while (true) {
      if (data < currentNode!.data) {
        if (currentNode.left == null) {
          currentNode.left = newnode;
          break;
        } else {
          currentNode = currentNode.left;
        }
      } else if (data > currentNode.data) {
        if (currentNode.right == null) {
          currentNode.right = newnode;
          break;
        } else {
          currentNode = currentNode.right;
        }
      }
    }
  }

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

  int getminValue(TreeNode? currentNode) {
    while (currentNode!.left != null) {
      currentNode = currentNode.left;
    }
    return currentNode.data;
  }

  void removeHelper(int data, TreeNode? currentNode, TreeNode? parentNode) {
    while (currentNode != null) {
      if (data < currentNode.data) {
        parentNode = currentNode;
        currentNode = currentNode.left;
      } else if (data > currentNode.data) {
        parentNode = currentNode;
        currentNode = currentNode.right;
      } else {
        if (currentNode.left != null && currentNode.right != null) {
          currentNode.data = getminValue(currentNode.right);
          removeHelper(currentNode.data, currentNode.right, currentNode);
        } else {
          TreeNode? childnode = (currentNode.left != null)
              ? currentNode.left
              : currentNode.right;
          if (parentNode == null) {
            root = childnode;
          } else if (parentNode.left == currentNode) {
            parentNode.left = childnode;
          } else {
            parentNode.right = childnode;
          }
        }
        break;
      }
    }
  }

  void remove(int data) {
    removeHelper(data, root, null);
  }

  void inorder(TreeNode? root) {
    if (root == null) {
      return;
    }

    inorder(root.left);
    print(root.data);
    inorder(root.right);
  }
}

void main() {
  Bst tree = Bst();
  tree.insert(10);
  tree.insert(20);
  tree.insert(30);
  tree.insert(40);
  tree.insert(50);
  tree.insert(60);
  tree.insert(70);
  tree.insert(80);
  tree.inorder(tree.root);
  tree.remove(70);
  print("removed");
  tree.inorder(tree.root);
}
