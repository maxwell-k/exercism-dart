class Node {
  String data;
  Node left;
  Node right;

  Node(String this.data);

  void insert(String data) {
    bool left = data.compareTo(this.data) <= 0;
    if (left) {
      if (left && this.left == null)
        this.left = Node(data);
      else
        this.left.insert(data);
    } else {
      if (!left && this.right == null)
        this.right = Node(data);
      else
        this.right.insert(data);
    }
  }
}

class BinarySearchTree {
  Node root;

  BinarySearchTree(String data) {
    this.root = Node(data);
  }

  void insert(String data) => this.root.insert(data);

  List<String> get sortedData => [];
}
