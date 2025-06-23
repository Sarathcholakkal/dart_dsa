import 'dart:collection';

class Graph {
  Map<int, List<int>> adjList = {};

  void addVertex(int vertex) {
    adjList.putIfAbsent(vertex, () => []);
  }

  void removeVertex(int vertex) {
    adjList.remove(vertex);
    for (var nei in adjList.values) {
      nei.remove(vertex);
    }
  }

  void addEdge(int src, int dest, {bool isDirected = true}) {
    adjList.putIfAbsent(src, () => []).add(dest);
    if (isDirected) {
      adjList.putIfAbsent(dest, () => []).add(src);
    }
  }

  void removeEdge(int src, int dest, {bool isDirected = true}) {
    adjList[src]?.remove(dest);
    if (isDirected) {
      adjList[dest]?.remove(src);
    }
  }

  void display() {
    for (var vertex in adjList.keys) {
      print("$vertex:${adjList[vertex]}");
    }
  }

  void dfsIterative(int startVertex) {
    List<int> stack = [];
    Set<int> visited = {};

    stack.add(startVertex);
    while (stack.isNotEmpty) {
      int currentvertex = stack.removeLast();
      if (!visited.contains(currentvertex)) {
        print(currentvertex);
        visited.add(currentvertex);
        for (var nei in adjList[currentvertex] ?? []) {
          if (!visited.contains(nei)) {
            stack.add(nei);
          }
        }
      }
    }
  }

  void bfsIterative(int startVertex) {
    Queue<int> queue = Queue();
    Set<int> visited = {};
    queue.add(startVertex);
    visited.add(startVertex);
    while (queue.isNotEmpty) {
      int currentVertex = queue.removeFirst();
      print(currentVertex);
      for (int nei in adjList[currentVertex] ?? []) {
        if (!visited.contains(nei)) {
          queue.add(nei);
          visited.add(nei);
        }
      }
    }
  }
}

void main() {
  Graph graph = Graph();

  // Add vertices
  for (int i = 1; i <= 5; i++) {
    graph.addVertex(i);
  }

  // Add undirected edges
  graph.addEdge(1, 2);
  graph.addEdge(1, 3);
  graph.addEdge(2, 4);
  graph.addEdge(3, 5);

  print("Graph:");
  graph.display();

  print("\nDFS starting from 1:");
  graph.dfsIterative(1);

  print("\nBFS starting from 1:");
  graph.bfsIterative(1);
}
