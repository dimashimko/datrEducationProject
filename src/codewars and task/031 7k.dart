List<int> flattenAndSort(List<List<int>> nums) {
  List<int> nn = [];
  for (var num in nums) {
    for (var n in num) {
      nn.add(n);

    }
  }
  nn.sort();
  return nn;
}

