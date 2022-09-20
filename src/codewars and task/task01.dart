main() {
  test([0, 1, 2, 2, 3, 0, 4, 2], 2, [0, 1, 3, 0, 4]);
  test([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 2, [1, 3, 4, 5, 6, 7, 8, 9, 10]);
  test([2], 2, []);
}

void test(List items, int k, List answer) {
  List result = removeOccurrences(items, k);
  bool correct = result.join('') == answer.join('');
  print(
      ' $correct ${correct ? '☑ Test Passed' : ' $result  is no $answer'}');
}

List removeOccurrences(final List items, final int pattern){
  List modifiedList = items.where((e) => e!=pattern).toList();
  print('Pattern: $pattern');
  print('Original list: $items');
  print('Modified list: $modifiedList');
  return modifiedList;
}