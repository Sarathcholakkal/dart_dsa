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

  void dfsIterative(int startVertex) {
    final visited = <int>{};
    final stack = <int>[];

    stack.add(startVertex);

    while (stack.isNotEmpty) {
      final currentVertex = stack.removeLast();
      if (!visited.contains(currentVertex)) {
        print(currentVertex);
        visited.add(currentVertex);

        for (var neighbor in _adjacencyList[currentVertex] ?? []) {
          if (!visited.contains(neighbor)) {
            stack.add(neighbor);
          }
        }
      }
    }
  }

  //! dfs recursive

  void dfs(int startVertex) {
    final visited = <int>{};
    _dfsRecursive(startVertex, visited);
  }

  void _dfsRecursive(int vertex, Set<int> visited) {
    visited.add(vertex);
    print(vertex);

    for (var neighbor in _adjacencyList[vertex] ?? []) {
      if (!visited.contains(neighbor)) {
        _dfsRecursive(neighbor, visited);
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

  // DFS Iterative Traversal
  print("\nDFS Iterative Traversal:");
  graph.dfsIterative(1);

  // DFS Recursive Traversal
  print("\nDFS Recursive Traversal:");
  graph.dfs(1);
}
