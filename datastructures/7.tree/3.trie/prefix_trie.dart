// class TrieNode {
//   Map<String, TrieNode?> childrens = {};
// }

// class PrefixTrie {
//   TrieNode root = TrieNode();
//   String endsymbol = "*";

//   PrefixTrie(String str) {
//     populatePrefixTrie(str);
//   }

//   void populatePrefixTrie(String str) {
//     // ✅ Insert prefixes by starting from the beginning
//     for (int i = 1; i <= str.length; i++) {
//       insertPrefixStartingAt(str.substring(0, i));
//     }
//   }

//   void insertPrefixStartingAt(String prefix) {
//     TrieNode node = root;

//     for (int i = 0; i < prefix.length; i++) {
//       String letter = prefix[i];
//       node.childrens[letter] ??= TrieNode();
//       node = node.childrens[letter]!;
//     }
//     node.childrens[endsymbol] = TrieNode(); // ✅ Mark end of word
//   }

//   bool contains(String str) {
//     TrieNode node = root;
//     for (int i = 0; i < str.length; i++) {
//       String letter = str[i];
//       if (!node.childrens.containsKey(letter)) {
//         return false;
//       }
//       node = node.childrens[letter]!;
//     }
//     return node.childrens.containsKey(endsymbol);
//   }
// }

void main() {
  PrefixTrie trie = PrefixTrie("banana");
  print(trie.contains("ban")); // ✅ true
  print(trie.contains("bana")); // ✅ true
  print(trie.contains("banana")); // ✅ true
  print(trie.contains("nana")); // ❌ false (not a prefix)
}

class TrieNode {
  Map<String, TrieNode> children = {};
}

class PrefixTrie {
  TrieNode root = TrieNode();
  String endsymbol = "*";
  PrefixTrie(String str) {
    populatedprefixtrie(str);
  }

  void populatedprefixtrie(String str) {
    for (int i = 0; i <= str.length; i++) {
      //!<=
      insertsubStingAt(str.substring(0, i));
    }
  }

  insertsubStingAt(String str) {
    TrieNode node = root;

    for (int i = 0; i < str.length; i++) {
      String letter = str[i];
      node.children.putIfAbsent(letter, () => TrieNode());
      node = node.children[letter]!;
    }
    node.children[endsymbol] = TrieNode();
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
    return node.children.containsKey(endsymbol);
  }
}
