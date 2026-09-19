int myBinarySearch(List<int> items, int target) {
  var left = 0, right = items.length - 1;

  while (left <= right) {
    var mid = ((left + right) / 2).floor();

    if (items[mid] == target) {
      return mid;
    }

    if (items[mid] < target) {
      left = mid + 1;
    } else {
      right = mid - 1;
    }
  }

  return -1;
}

void main(List<String> args) {
  final numbers = [1, 2, 5, 8, 9, 12, 15, 18, 23, 34, 50, 58, 65, 71, 74, 80];

  print(myBinarySearch(numbers, 1));
}
