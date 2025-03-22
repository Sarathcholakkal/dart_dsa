class TrieNode {
  Map<String, TrieNode?> children = {}; // Allow null values
}

class Trie {
  TrieNode root = TrieNode();
  String endSymbol = "*";

  Trie(String str) {
    populateSuffixTrie(str);
  }

  void populateSuffixTrie(String str) {
    for (int i = 0; i < str.length; i++) {
      insertSubStringStartingAt(i, str);
    }
  }

  void insertSubStringStartingAt(int index, String str) {
    TrieNode node = root;
    for (int i = index; i < str.length; i++) {
      String letter = str[i];
      node.children[letter] ??= TrieNode(); // Insert if not present
      node = node.children[letter]!; // Move to next node
    }
    node.children[endSymbol] = null; // Store null for endSymbol
  }

  bool contains(String str) {
    TrieNode node = root;
    for (int i = 0; i < str.length; i++) {
      String letter = str[i];
      if (!node.children.containsKey(letter)) {
        return false;
      }
      node = node.children[letter]!;
    }
    return node.children.containsKey(endSymbol);
  }
}

void main() {
  Trie newtrie = Trie("mannan");
  print(newtrie.contains('mannan'));
  print(newtrie.contains('manna'));
  print(newtrie.contains('annan'));
  print(newtrie.contains('anna'));
}
