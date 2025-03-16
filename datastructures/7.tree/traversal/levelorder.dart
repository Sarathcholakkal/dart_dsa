import 'dart:collection';

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;

  TreeNode(this.val, [this.left, this.right]);
}

void levelOrder(TreeNode? root) {
  if (root == null) {
    return;
  }
  Queue<TreeNode> queue = Queue();
  queue.add(root);
  while (queue.isNotEmpty) {
    TreeNode node = queue.removeFirst();
    print(node.val);
    if (node.left != null) {
      queue.add(node.left!);
    }
    if (node.right != null) {
      queue.add(node.right!);
    }
  }
}

void main() {
  TreeNode root =
      TreeNode(4, TreeNode(2, TreeNode(1), TreeNode(3)), TreeNode(5));

  print("postorder Traversal:");
  levelOrder(root);
}

//      4
//      / \
//     2   5
//    / \
//   1   3
