class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;

  TreeNode(this.val, [this.left, this.right]);
}

void inorderTraversal(TreeNode? root) {
  if (root == null) {
    return;
  }
  inorderTraversal(root.left);
  print(root.val);
  inorderTraversal(root.right);
}

void main() {
  TreeNode root =
      TreeNode(4, TreeNode(2, TreeNode(1), TreeNode(3)), TreeNode(5));

  print("Inorder Traversal:");
  inorderTraversal(root);
}

//      4
//      / \
//     2   5
//    / \
//   1   3
