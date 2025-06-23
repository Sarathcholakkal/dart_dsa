
//104. Maximum Depth of Binary Tree
class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  int maxDepth(TreeNode? root) {
    if (root == null) return 0;

    int leftDepth = maxDepth(root.left);
    int rightDepth = maxDepth(root.right);

    return 1 + (leftDepth > rightDepth ? leftDepth : rightDepth);
  }
}

void main() {
  // Creating the following binary tree:
  //       1
  //      / \
  //     2   3
  //    / \
  //   4   5

  TreeNode root = TreeNode(1);
  root.left = TreeNode(2);
  root.right = TreeNode(3);
  root.left!.left = TreeNode(4);
  root.left!.right = TreeNode(5);

  Solution solution = Solution();
  int depth = solution.maxDepth(root);

  print("Maximum depth of the binary tree: $depth"); // Output: 3
}
