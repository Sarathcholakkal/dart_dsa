// 133. Clone Graph
// Medium
// Topics
// Companies
// Given a reference of a node in a connected undirected graph.

// Return a deep copy (clone) of the graph.

// Each node in the graph contains a value (int) and a list (List[Node]) of its neighbors.

// class Node {
//     public int val;
//     public L
class Node {
  int val;
  List<Node> neighbors;

  Node(this.val, [List<Node>? neighbors]) : neighbors = neighbors ?? [];

  @override
  String toString() => 'Node($val)';
}

void printGraph(Node? node, [Set<Node>? visited]) {
  if (node == null || (visited?.contains(node) ?? false)) return;
  visited ??= {};
  visited.add(node);

  print(
      'Node ${node.val} has neighbors: ${node.neighbors.map((n) => n.val).join(', ')}');

  for (var neighbor in node.neighbors) {
    printGraph(neighbor, visited);
  }
}

void main() {
  // Create a sample graph:
  // 1 -- 2
  // |    |
  // 4 -- 3
  var node1 = Node(1);
  var node2 = Node(2);
  var node3 = Node(3);
  var node4 = Node(4);

  node1.neighbors = [node2, node4];
  node2.neighbors = [node1, node3];
  node3.neighbors = [node2, node4];
  node4.neighbors = [node1, node3];

  print('Original graph:');
  printGraph(node1);

  // Clone the graph
  var solution = Solution();
  Node? cloned = solution.cloneGraph(node1);
  print('\nCloned graph:');
  printGraph(cloned);
}

class Solution {
  Map<Node, Node> oldToNew = {};

  Node? cloneGraph(Node? node) {
    if (node == null) return null;

    if (oldToNew.containsKey(node)) {
      return oldToNew[node];
    }

    Node copy = Node(node.val);
    oldToNew[node] = copy;

    for (var neighbor in node.neighbors) {
      copy.neighbors.add(cloneGraph(neighbor)!);
    }

    return copy;
  }
}

//
