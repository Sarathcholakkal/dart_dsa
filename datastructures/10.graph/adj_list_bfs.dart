import 'dart:collection';

class AdjacencyListGraph {
  final Map<int, List<int>> _adjacencyList;

  // Constructor
  AdjacencyListGraph() : _adjacencyList = {};

  // Add a vertex to the graph
  void addVertex(int vertex) {
    _adjacencyList[vertex] = [];
  }

  // Remove a vertex from the graph
  void removeVertex(int vertex) {
    _adjacencyList.remove(vertex);
    for (var neighbors in _adjacencyList.values) {
      neighbors.remove(vertex);
    }
  }

  // Add an edge between two vertices
  void addEdge(int source, int destination) {
    _adjacencyList[source]?.add(destination);
    _adjacencyList[destination]?.add(source);
  }

  // Remove an edge between two vertices
  void removeEdge(int source, int destination) {
    _adjacencyList[source]?.remove(destination);
    _adjacencyList[destination]?.remove(source);
  }

  // Display the adjacency list
  void printGraph() {
    _adjacencyList.forEach((key, value) {
      print('$key -> ${value.join(" ")}');
    });
  }

  void bfsIterative(int startVertex) {
    final visited = <int>{};
    final queue = Queue<int>();

    queue.add(startVertex);
    visited.add(startVertex);

    while (queue.isNotEmpty) {
      final currentVertex = queue.removeFirst();
      print(currentVertex);

      for (var neighbor in _adjacencyList[currentVertex] ?? []) {
        if (!visited.contains(neighbor)) {
          queue.add(neighbor);
          visited.add(neighbor);
        }
      }
    }
  }
}

void main() {
  final graph = AdjacencyListGraph();

  // Adding vertices
  graph.addVertex(1);
  graph.addVertex(2);
  graph.addVertex(3);
  graph.addVertex(4);

  // Adding edges
  graph.addEdge(1, 2);
  graph.addEdge(2, 3);
  graph.addEdge(3, 4);
  graph.addEdge(4, 1);

  // Displaying the graph
  print("Graph:");
  graph.printGraph();

  // BFS Traversal
  print("\nBFS Traversal:");
  graph.bfsIterative(1);
}
