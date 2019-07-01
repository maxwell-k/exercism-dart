class Node<T extends Comparable<T>> {
  final T data;
  Node<T> left, right;

  Node(T this.data);

  void insert(T value) {
    bool _left = value.compareTo(data) <= 0;
    if (_left && left == null)
      left = Node<T>(value);
    else if (!_left && right == null)
      right = Node<T>(value);
    else
      (_left ? left : right).insert(value);
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
