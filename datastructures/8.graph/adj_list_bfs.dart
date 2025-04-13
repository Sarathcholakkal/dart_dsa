// import 'dart:collection';

// class AdjacencyListGraph {
//   final Map<int, List<int>> _adjacencyList;

//   // Constructor
//   AdjacencyListGraph() : _adjacencyList = {};

//   // Add a vertex to the graph
//   void addVertex(int vertex) {
//     _adjacencyList[vertex] = [];
//   }

//   // Remove a vertex from the graph
//   void removeVertex(int vertex) {
//     _adjacencyList.remove(vertex);
//     for (var neighbors in _adjacencyList.values) {
//       neighbors.remove(vertex);
//     }
//   }

//   // Add an edge between two vertices
//   void addEdge(int source, int destination) {
//     _adjacencyList[source]?.add(destination);
//     _adjacencyList[destination]?.add(source);
//   }

//   // Remove an edge between two vertices
//   void removeEdge(int source, int destination) {
//     _adjacencyList[source]?.remove(destination);
//     _adjacencyList[destination]?.remove(source);
//   }

//   // Display the adjacency list
//   void printGraph() {
//     _adjacencyList.forEach((key, value) {
//       print('$key -> ${value.join(" ")}');
//     });
//   }

//   void bfsIterative(int startVertex) {
//     final visited = <int>{};
//     final queue = Queue<int>();

//     queue.add(startVertex);
//     visited.add(startVertex);

//     while (queue.isNotEmpty) {
//       final currentVertex = queue.removeFirst();
//       print(currentVertex);

//       for (var neighbor in _adjacencyList[currentVertex] ?? []) {
//         if (!visited.contains(neighbor)) {
//           queue.add(neighbor);
//           visited.add(neighbor);
//         }
//       }
//     }
//   }
// }

// void main() {
//   final graph = AdjacencyListGraph();

//   // Adding vertices
//   graph.addVertex(1);
//   graph.addVertex(2);
//   graph.addVertex(3);
//   graph.addVertex(4);

//   // Adding edges
//   graph.addEdge(1, 2);
//   graph.addEdge(2, 3);
//   graph.addEdge(3, 4);
//   graph.addEdge(4, 1);

//   // Displaying the graph
//   print("Graph:");
//   graph.printGraph();

//   // BFS Traversal
//   print("\nBFS Traversal:");
//   graph.bfsIterative(1);
// }

import 'dart:collection';

class AdjListBfs {
  Map<int, List<int>> adjlist;
  AdjListBfs() : adjlist = {};

  void addVertex(int vertex) {
    adjlist[vertex] = [];
  }

  void addEdge(int source, int dest) {
    adjlist[source]?.add(dest);
    adjlist[dest]?.add(source);
  }

  void removevertex(int vertex) {
    adjlist.remove(vertex);
    for (var neibr in adjlist.values) {
      neibr.remove(vertex);
    }
  }

  void removeEdge(int source, int dest) {
    adjlist[source]?.remove(dest);
    adjlist[dest]?.remove(source);
  }

  void Bfsiterative(int startvertex) {
    Queue<int> queue = Queue();
    Set<int> visited = {};

    queue.add(startvertex);
    visited.add(startvertex);
    while (queue.isNotEmpty) {
      final curr = queue.removeFirst();

      print(curr);

      for (var neibr in adjlist[curr] ?? []) {
        if (!visited.contains(neibr)) {
          visited.add(neibr);
          queue.add(neibr);
        }
      }
    }
  }

  void displaygraph() {
    adjlist.forEach((key, value) => print("$key:$value"));
  }
}

void main() {
  final graph = AdjListBfs();

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
  graph.displaygraph();

  // BFS Traversal
  print("\nBFS Traversal:");
  graph.Bfsiterative(1);
}
