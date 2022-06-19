main() {
  test("Testing for 1", 1, 1);
  test("Testing for 1", 10, 4);
  test("Testing for 1", 11, 2);
  test("Testing for 1", 54, 8);
  test("Testing for 1", 64, 7);
}

void test(String s, int number, int answer) {
  int result = divisors(number);
  bool correct = result == answer;
  print(' $correct ${correct ? '☑ Test Passed' : '$result is no $answer'}');
}

/* my solution */
int divisors1(n) {
  int c = 0;
  for (int i = 1; i <= n; i++) {
    if (n % i == 0) c++;
  }
  return c;
}

/* my solution */
int divisors2(n) {
  List list = List.generate(n, (index) => index + 1);
  return list.where((element) => (n % element == 0)).length;
}

/* my solution */
int divisors3(n) {
  return List.generate(n, (index) => index + 1)
      .where((e) => (n % e == 0))
      .length;
}

/*  The clever solution of other programmers */
int divisors(int n) {
  return [
    for (var i = 1; i < n + 1; i++)
      if (n % i == 0) i
  ].length;
}
