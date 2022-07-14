void main() {
  print(1^1);
  test('Testing for [1, 1, 2]', [1, 1, 2], 2);
  test('Testing for [17, 17, 3, 17, 17, 17, 17]', [17, 17, 3, 17, 17, 17, 17],3);
  test('Testing for [8, 1, 1, 1, 1, 1, 1]', [8, 1, 1, 1, 1, 1, 1], 8);
  test('Testing for [1, 1, 1, 1, 1, 1, 0]', [1, 1, 1, 1, 1, 1, 0], 0);
  test('Testing for [0, 0, 0, 7, 0, 0, 0]', [0, 0, 0, 7, 0, 0, 0], 7);
  test('Testing for [-21, -21, -21, -21, -6, -21, -21]',
      [-21, -21, -21, -21, -6, -21, -21], -6);
}

void test(String s, List<int> list, int answer) {
  int result = stray(list);
  bool correct = result == answer;
  print(' $correct ${correct? '☑ Test Passed': '$result is no $answer'}');
}

/* my solution */
int stray1(List<int> n) {
  n.sort();
  return n[0]==n[1]? n.last : n[0];
}



/*  The clever solution of other programmers */
int stray(List<int> numbers) {
  return numbers.reduce((a,b) => a ^ b);
}

/*int stray(List<int> n) {
  for (int i = 0; i < n.length-2; i++) {
    if(n[i]!=n[i-1] && n[i]!=n[i+1]) return n[i];
  }
  return -1;


  // n.sort();
  // return n[0]==n[1]? n.last : n[0];
}*/

