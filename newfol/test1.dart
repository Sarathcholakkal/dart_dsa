void main() {
  List<String> num = ['a', 'c', 'b', 'g', 'd', 'c', 'g'];

  Map<String, int> hashmap = {};

  for (int i = 0; i < num.length; i++) {
    hashmap[num[i]] = (hashmap[num[i]] ?? 0) + 1;
  }

  for (var entry in hashmap.entries) {
    print("${entry.key}:${entry.value}");
  }
}
