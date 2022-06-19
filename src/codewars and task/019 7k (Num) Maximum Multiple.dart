main() {
  test(2, 7, 6);
  test(3, 10, 9);
  test(7, 17, 14);
  test(10, 50, 50);
  test(37, 200, 185);
  test(7, 100, 98);
}

void test(int divisor, int bound, int answer) {
  int result = maxMultiple(divisor, bound);
  bool correct = result == answer;
  print(' $correct ${correct ? '☑ Test Passed' : '$result is no $answer'}');
}

/* my solution */
int maxMultiple1(d, b) {
  for (int i = b; i > 0; i--) if (i % d == 0) return i;
  return 0;
}

/*  The clever code of other programmers */
//  print([for(var i = 1; i<10; i++)if(i%2==0) i ]);

/*  The clever solution of other programmers */
int maxMultiple2(divisor, bound) {
  return bound - bound % divisor;
}

/*  The clever solution of other programmers */
int maxMultiple(a,b) => (b ~/ a) * a;