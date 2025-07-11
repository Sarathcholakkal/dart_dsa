// void main() {
//   SuffixTrie newtrie = SuffixTrie("mannan");
//   print(newtrie.contains('mannan'));
//   print(newtrie.contains('annan'));
//   print(newtrie.contains('annan'));
//   print(newtrie.contains('anna'));
// }

// class TrieNode {
//   Map<String, TrieNode> chileren = {};
// }

// class SuffixTrie {
//   TrieNode root = TrieNode();
//   String endsymbol = "*";

//   SuffixTrie(String str) {
//     populateSuffixTrie(str);
//   }

//   void populateSuffixTrie(String str) {
//     for (int i = 0; i < str.length; i++) {
//       insertSubStringAt(i, str);
//     }
//   }

//   void insertSubStringAt(int index, String str) {
//     TrieNode node = root;
//     for (int i = index; i < str.length; i++) {
//       String letter = str[i];
//       node.chileren.putIfAbsent(letter, () => TrieNode());
//       node = node.chileren[letter]!;
//     }
//     node.chileren[endsymbol] = TrieNode();
//   }

//   bool contains(String str) {
//     TrieNode node = root;
//     for (int i = 0; i < str.length; i++) {
//       String letter = str[i];
//       if (!node.chileren.containsKey(letter)) {
//         return false;
//       }
//       node = node.chileren[letter]!;
//     }
//     return node.chileren.containsKey(endsymbol);
//   }
// }

class TrieNode {
  int data;
  TrieNode? left;
  TrieNode? right;
  TrieNode(this.data);
}

class SuffixTrie {
  TrieNode? root;
  SuffixTrie(String str) {
    populateSuffixTrie(str);
  }

    populateSuffixTrie(String str){
         for(int i=0;i<str.length;i++){
           
         }
    }
    
}
