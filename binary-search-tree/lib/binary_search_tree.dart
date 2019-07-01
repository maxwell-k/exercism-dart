class Node {
  String data;
  Node left;
  Node right;

  Node(String this.data);
}

class BinarySearchTree {
  Node root;

  BinarySearchTree(String data) {
    this.root = Node(data);
  }
  void insert(String Data) {
    throw UnimplementedError;
  }

  List<String> get sortedData => [];
}
