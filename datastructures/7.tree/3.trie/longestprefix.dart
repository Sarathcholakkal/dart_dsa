// // find longest prefix  using trei sreejith sir common problem
// class TrieNode {
//   Map<String, TrieNode> children = {};
//   bool isWord = false;
// }

// class Trie {
//   final TrieNode root = TrieNode();

//   void insert(String str) {
//     TrieNode node = root;
//     for (var c in str.split('')) {
//       node = node.children.putIfAbsent(c, () => TrieNode());
//     }
//     node.isWord = true;
//   }

//   void longestPrefix() {
//     TrieNode node = root;
//     String prefix = "";

//     while (node.children.length == 1 && !node.isWord) {
//       String nextChar = node.children.keys.first;
//       prefix += nextChar;
//       node = node.children[nextChar]!;
//     }

//     print("Longest Common Prefix: $prefix");
//   }
// }

// void main() {
//   Trie trie = Trie();

//   // Insert words with a common prefix
//   trie.insert("apple");
//   trie.insert("app");
//   trie.insert("apply");

//   trie.longestPrefix(); // Output: "app"
// }

class TrieNode {
  Map<String, TrieNode> chilldren = {};
  bool isword = false;
}

class Trie {
  TrieNode root = TrieNode();
  void insert(String str) {
    TrieNode node = root;
    for (var c in str.split('')) {
      node.chilldren.putIfAbsent(c, () => TrieNode());
      node = node.chilldren[c]!;
    }
    node.isword = true;
  }

  String longestprefix() {
    String prefix = '';
    TrieNode node = root;

    while (node.chilldren.length == 1 && !node.isword) {
      String nextchar = node.chilldren.keys.first;
      prefix += nextchar;
      node = node.chilldren[nextchar]!;
    }
    return prefix;
  }
}

void main() {
  Trie trie = Trie();

  // Insert words with a common prefix
  trie.insert("apple");
  trie.insert("app");
  trie.insert("apply");
  print(trie.longestprefix());
}
