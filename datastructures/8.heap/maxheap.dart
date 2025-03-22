class Graph {
  late int numVertices;
  late List<List<int>> adjMatrix;

  // Constructor to initialize the matrix
  Graph(this.numVertices) {
    adjMatrix = List.generate(numVertices, (_) => List.filled(numVertices, 0));
  }

  //! Method to add edges
  void addEdge(int i, int j) {
    if (i >= 0 && i < numVertices && j >= 0 && j < numVertices) {
      adjMatrix[i][j] = 1;
      adjMatrix[j][i] = 1;
    } else {
      print("Invalid edge: ($i, $j)");
    }
  }

  //! remove edge

  void removeEdge(int i, int j) {
    adjMatrix[i][j] = 0;
    adjMatrix[j][i] = 0;
  }

  //! add vertix

  void addVertex() {
    List<List<int>> newMatrix =
        List.generate(numVertices + 1, (_) => List.filled(numVertices + 1, 0));

    for (int i = 0; i < numVertices; i++) {
      for (int j = 0; j < numVertices; j++) {
        newMatrix[i][j] = adjMatrix[i][j];
      }
    }
    adjMatrix = newMatrix;
    numVertices++;
  }

//! remove vertix   time complexcity O(n^2)
  void removeVertex(int v) {
    List<List<int>> newMatrix =
        List.generate(numVertices - 1, (_) => List.filled(numVertices - 1, 0));
    for (int i = 0; i < numVertices; i++) {
      for (int j = 0; j < numVertices; j++) {
        if (i != v && j != j) {
          newMatrix[i][j] = adjMatrix[i][j];
        }
      }
    }
    adjMatrix = newMatrix;
    numVertices--;
  }
}
