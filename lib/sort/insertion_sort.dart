List<int> insertionSort(List<int> list) {
  var arr = [...list];

  for (var i = 1; i < arr.length; i++) {
    var temp = arr[i];
    var j = i - 1;

    while (j >= 0 && arr[j] > temp) {
      arr[j + 1] = arr[j];
      j--;
    }

    arr[j + 1] = temp;
  }

  return arr;
}

void main() {
  List<int> numbers = [32, 10, 3, 5, 1, 7, 2, 8, 9];
  print('Unsorted List: $numbers');
  // List<int> numbers = [32, 10, 3, 5, 1, 7, 2, 8, 9];

  List<int> sortedNumbers = insertionSort(numbers);
  print('Sorted List:   $sortedNumbers');
}
