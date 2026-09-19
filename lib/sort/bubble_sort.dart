List<int> bubbleSort(List<int> nums) {
  final result = [...nums];
  // Flag to keep track of whether any elements were swapped in a pass
  bool swapping = true;

  // Track the upper bound of unsorted elements.
  // After each full outer loop pass, the largest remaining element
  // "bubbles up" to the end, so we can ignore it in subsequent passes.
  int end = result.length;

  // Continue looping as long as at least one swap occurred in the previous pass
  while (swapping) {
    // Assume no swaps will happen in this pass
    swapping = false;

    // Loop through the list from index 1 up to 'end - 1'
    for (int i = 1; i < end; i++) {
      // Compare the current element with the previous one
      if (result[i - 1] > result[i]) {
        // Swap elements if they are out of order
        final int temp = result[i - 1];
        result[i - 1] = result[i];
        result[i] = temp;

        // Mark that a swap occurred so the while loop continues
        swapping = true;
      }
    }

    // Shrink the search boundary by 1 since the largest item is now at the end
    end--;
  }

  return result;
}

void main() {
  final List<int> nums = <int>[25, 12, 34, 22, 11, 64, 90, 100];
  print('original: $nums');
  print('Sorted: ${bubbleSort(nums)}');
}
