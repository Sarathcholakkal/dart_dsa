class TreeNode {
  int value;
  TreeNode? leftChild;
  TreeNode? rightChild;

  TreeNode(this.value, [this.leftChild, this.rightChild]);
}

class Solution {
  int findMaxDepth(TreeNode? root) {
    if (root == null) return 0;

    int leftDepth = findMaxDepth(root.leftChild);
    int rightDepth = findMaxDepth(root.rightChild);

    return 1 + (leftDepth > rightDepth ? leftDepth : rightDepth);
  }
}

void main() {
  TreeNode root =
      TreeNode(1, TreeNode(2, TreeNode(4), TreeNode(5)), TreeNode(3));

  Solution solution = Solution();
  print("Maximum depth of the tree: ${solution.findMaxDepth(root)}");
}
