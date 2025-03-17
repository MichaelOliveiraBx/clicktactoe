
extension ListExtension<T> on List<T> {
  int countWhere(bool Function(T) test) {
    var count = 0;
    for (final element in this) {
      if (test(element)) {
        count++;
      }
    }
    return count;
  }

  T? firstWhereOrNull(bool Function(T element) test) {
    for (var element in this) {
      if (test(element)) return element;
    }
    return null;
  }
}