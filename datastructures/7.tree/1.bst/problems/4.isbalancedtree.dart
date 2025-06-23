// 110. Balanced Binary Tree

// Given a binary tree, determine if it is height-balanced.

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  bool isBalanced(TreeNode? root) {
    return _checkHeight(root) != -1;
  }

  int _checkHeight(TreeNode? node) {
    if (node == null) return 0;

    int leftHeight = _checkHeight(node.left);
    if (leftHeight == -1) return -1;

    int rightHeight = _checkHeight(node.right);
    if (rightHeight == -1) return -1;

    if ((leftHeight - rightHeight).abs() > 1) return -1;

    return 1 + (leftHeight > rightHeight ? leftHeight : rightHeight);
  }
}

void main() {
  // Create a balanced binary tree:
  TreeNode root = TreeNode(
    1,
    TreeNode(2, TreeNode(4), TreeNode(5)),
    TreeNode(3),
  );

  Solution solution = Solution();
  bool result = solution.isBalanced(root);
  print("Is tree balanced? $result"); // Output: true

  // Create an unbalanced tree:
  TreeNode unbalancedRoot = TreeNode(
    1,
    TreeNode(2, TreeNode(3, TreeNode(4), null), null),
    null,
  );

  bool unbalancedResult = solution.isBalanced(unbalancedRoot);
  print("Is unbalanced tree balanced? $unbalancedResult"); // Output: false
}
