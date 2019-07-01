class Node<T extends Comparable<T>> {
  final T data;
  Node<T> left, right;

  Node(T this.data);

  void insert(T data) {
    bool left = data.compareTo(this.data) <= 0;
    if (left && this.left == null)
      this.left = Node<T>(data);
    else if (!left && this.right == null)
      this.right = Node<T>(data);
    else
      (left ? this.left : this.right).insert(data);
  }

  Iterable<T> get sortedData sync* {
    if (data == null) return;
    for (var t in left?.sortedData ?? <T>[]) yield t;
    yield data;
    for (var t in right?.sortedData ?? <T>[]) yield t;
  }
}

class BinarySearchTree {
  Node root;

  BinarySearchTree(String data) {
    this.root = Node<String>(data);
  }

  void insert(String data) => this.root.insert(data);

  Iterable<Comparable> get sortedData => this.root.sortedData;
}
