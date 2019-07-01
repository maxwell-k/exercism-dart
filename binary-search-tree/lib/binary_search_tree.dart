class Node<T extends Comparable<T>> {
  final String data;
  Node<T> left, right;

  Node(String this.data);

  void insert(String data) {
    bool left = data.compareTo(this.data) <= 0;
    if (left && this.left == null)
      this.left = Node<T>(data);
    else if (!left && this.right == null)
      this.right = Node<T>(data);
    else
      (left ? this.left : this.right).insert(data);
  }

  List<String> get sortedData {
    var output = List<String>();
    if (this.left != null) output.addAll(this.left.sortedData);
    output.add(this.data);
    if (this.right != null) output.addAll(this.right.sortedData);
    return output;
  }
}

class BinarySearchTree {
  Node root;

  BinarySearchTree(String data) {
    this.root = Node<String>(data);
  }

  void insert(String data) => this.root.insert(data);

  List<String> get sortedData => this.root.sortedData;
}
