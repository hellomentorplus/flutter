void main() {
  int binarySearch(List<int?> list) {
    int? value;
    int? minValue;
    int minIndex = 0;

    if (list.isEmpty) return 0;

    for (int i = 0; i < list.length; i++) {
      value = list[i];
      minValue = list[minIndex];

      if (value == null) {
        return i;
      }

      if (minValue != null && value < minValue) {
        minIndex = i;
      }
    }
    return minIndex;
  }

  List<int?> list1 = [1, 2, null, 10, 3, 5, null];
  List<int?> list2 = [1, 4, 3, 10, 15, 0, 6];
  List<int?> list3 = [null, 4, 3, 10, 15, 0, 6];
  List<int?> list4 = [];
  List<List<int?>> lists = [list1, list2, list3, list4];

  lists.forEach((list) => print(binarySearch(list)));
}
