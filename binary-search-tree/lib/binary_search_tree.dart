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
  void insert(String data) {
    if (data.compareTo(this.root.data) <= 0)
      this.root.left = Node(data);
    else
      throw UnimplementedError;
  }

  List<String> get sortedData => [];
}
