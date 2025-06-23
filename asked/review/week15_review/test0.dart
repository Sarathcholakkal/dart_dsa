class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode(this.val);
}

void main(List<String> args) {
  TreeNode root = TreeNode(2);
  root.left = TreeNode(8);
  root.right = TreeNode(5);
  TreeNode? leftnode = root.left;
  TreeNode? rightnode = root.right;
  leftnode!.right = TreeNode(4);
  rightnode!.left = TreeNode(7);
  levelOrder(root);
}

void levelOrder(TreeNode? root) {
  if (root == null) {
    return;
  }
  List<TreeNode?> queue = [];
  queue.add(root);
  while (queue.isNotEmpty) {
    TreeNode? node = queue.removeAt(0);
    print(node!.val);
    if (node.left != null) {
      queue.add(node.left);
    }
    if (node.right != null) {
      queue.add(node.right);
    }
  }
}

// void levelOrder(TreeNode? root) {
//   if (root == null) {
//     return;
//   }

//   List<TreeNode?> queue = [];
//   queue.add(root);

//   while (queue.isNotEmpty) {
//     TreeNode? node = queue.removeAt(0); // O(n) operation
//     print(node!.val);

//     if (node.left != null) {
//       queue.add(node.left);
//     }
//     if (node.right != null) {
//       queue.add(node.right);
//     }
//   }
// }
