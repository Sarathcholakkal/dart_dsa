// 230. Kth Smallest Element in a BST

// Given the root of a binary search tree, and an integer k, return the kth smallest value (1-indexed) of all the values of the nodes in the tree.

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;

  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  int kthSmallest(TreeNode? root, int k) {
    List<int> inorderList = [];

    void helper(TreeNode? root, List<int> inorderList) {
      if (root == null) {
        return;
      }
      helper(root.left, inorderList);
      inorderList.add(root.val);
      helper(root.right, inorderList);
    }

    helper(root, inorderList);
    return inorderList[k - 1];
  }
}

void main() {
  // Example BST:
  //       3
  //      / \
  //     1   4
  //      \
  //       2

  TreeNode root = TreeNode(3);
  root.left = TreeNode(1);
  root.right = TreeNode(4);
  root.left!.right = TreeNode(2);

  Solution solution = Solution();
  int k = 1;

  print("The $k-th smallest element is: ${solution.kthSmallest(root, k)}");
}
