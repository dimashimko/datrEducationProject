main() {
  doTest([], [0]);

  doTest([0, 1, 3, 6, 10], [20, 20, 19, 16, 10, 0]);

  doTest([1, 2, 3, 4, 5, 6], [21, 20, 18, 15, 11, 6, 0]);

  doTest([
    744125,
    935,
    407,
    454,
    430,
    90,
    144,
    6710213,
    889,
    810,
    2579358
  ], [
    10037855,
    9293730,
    9292795,
    9292388,
    9291934,
    9291504,
    9291414,
    9291270,
    2581057,
    2580168,
    2579358,
    0
  ]);
}

void doTest(List<int> ls, List<int> answer) {
  List<int> result = partsSums(ls);
  bool correct = '$result' == '$answer';
  print(' $correct ${correct ? '☑ Test Passed' : '$result is no $answer'}');
}

/* my solution */
List<int> partsSums1(List<int> ls) {
  if(ls.length== 0) return[0];
  int sum = ls.fold(0, (previousValue, element) => previousValue + element);
  List<int> result = List<int>.filled(ls.length+1, sum);
  for (int i = 1; i < result.length; i++) {
    result[i]=result[i-1]-ls[i-1];
  }
  return result;
}

/* my solution */
/* Execution Timed Out (12000 ms) !!! */
List<int> partsSums2(List<int> ls) => List<int>.generate(
    ls.length + 1, (i) => ls.sublist(i).fold(0, (p, e) => p + e));


/*  The clever code of other programmers */
List<int> partsSums(List<int> ls) {
  int sum = ls.fold<int>(0, (x, y) => x + y);
  return List.generate(ls.length +1, (i) =>i==0?sum: sum -= ls[i-1]);
}
