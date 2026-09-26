List<int> mergeSort(List<int> list) {
  // Base case: A list with 0 or 1 element is already sorted.
  if (list.length <= 1) {
    return list;
  }

  // Find the midpoint to divide the list in two.
  int middle = list.length ~/ 2;

  // Recursively sort the left and right halves.
  List<int> leftHalf = mergeSort(list.sublist(0, middle));
  List<int> rightHalf = mergeSort(list.sublist(middle));

  // Merge the two sorted halves.
  return merge(leftHalf, rightHalf);
}

List<int> merge(List<int> left, List<int> right) {
  List<int> result = [];
  int leftIndex = 0;
  int rightIndex = 0;

  // Compare elements from both lists and push the smaller one into result.
  while (leftIndex < left.length && rightIndex < right.length) {
    if (left[leftIndex] <= right[rightIndex]) {
      result.add(left[leftIndex]);
      leftIndex++;
    } else {
      result.add(right[rightIndex]);
      rightIndex++;
    }
  }

  // Append any remaining elements (if one list was longer than the other).
  while (leftIndex < left.length) {
    result.add(left[leftIndex]);
    leftIndex++;
  }

  while (rightIndex < right.length) {
    result.add(right[rightIndex]);
    rightIndex++;
  }

  return result;
}

void main() {
  List<int> numbers = [38, 27, 43, 3, 9, 82, 10];
  print('Unsorted List: $numbers');

  List<int> sortedNumbers = mergeSort(numbers);
  print('Sorted List:   $sortedNumbers');
}
