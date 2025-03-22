class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;

  TreeNode(this.val, [this.left, this.right]);
}

// Function to insert a value into BST
TreeNode? insertIntoBST(TreeNode? root, int val) {
  if (root == null) {
    return TreeNode(val);
  }

  if (val < root.val) {
    root.left = insertIntoBST(root.left, val);
  } else {
    root.right = insertIntoBST(root.right, val);
  }

  return root;
}

// Function to create a BST from a list
TreeNode? createBSTFromList(List<int> values) {
  TreeNode? root;
  for (int val in values) {
    root = insertIntoBST(root, val);
  }
  return root;
}

// Inorder traversal (prints BST in sorted order)
void inorderTraversal(TreeNode? root) {
  if (root == null) return;
  inorderTraversal(root.left);
  print(root.val);
  inorderTraversal(root.right);
}

void main() {
  List<int> values = [10, 5, 15, 3, 7, 13, 18]; // Example list
  TreeNode? root = createBSTFromList(values);

  print("Inorder Traversal of BST:");
  inorderTraversal(root); // Should print sorted values: 3, 5, 7, 10, 13, 15, 18
  checkBST(root);
}

bool checkBST(TreeNode? root) {
  List<int> inorderlist = [];
  helper(root, inorderlist);
  for (int i = 1; i < inorderlist.length; i++) {
    if (inorderlist[i] <= inorderlist[i - 1]) {
      return false;
    }
  }
  return true;
}

void helper(TreeNode? treenode, List<int> inorderlist) {
  if (treenode == null) {
    return;
  }
  helper(treenode.left, inorderlist);
  inorderlist.add(treenode.val);
  helper(treenode.right, inorderlist);
}
