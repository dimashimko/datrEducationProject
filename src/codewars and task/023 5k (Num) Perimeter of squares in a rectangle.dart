main() {
  doTest(5, "80");
  doTest(7, "216");
  doTest(20, "114624");
  doTest(30, "14098308");
  doTest(250, "133797491887924782725427226931777586764021526282323488");
}

void doTest(int m, String answer) {
  BigInt result = perimeter(m);
  bool correct = '$result' == answer;
  print(' $correct ${correct ? '☑ Test Passed' : '$result is no $answer'}');
}

/* my solution */
BigInt perimeter1(int m) {
  BigInt a = BigInt.from(1);
  BigInt b = BigInt.from(1);
  BigInt sum = BigInt.from(2);

  for(int i = 0; i<m-1; i++){
    b+=a;
    a=b-a;
    sum +=b;
  }

  return sum*BigInt.from(4);
}

/*  The clever code of other programmers */
BigInt perimeter2(int n) {
  BigInt go(int n, BigInt a, BigInt b, BigInt sum) {
    return n < 0 ? sum * BigInt.from(4) : go(n-1, b, a+b, sum+a);
  }
  return go(n, BigInt.one, BigInt.one, BigInt.zero);
}


/*  The clever code of other programmers */
BigInt perimeter(int m) => fibonacci().take(m + 1).reduce((a, b) => a + b) * BigInt.from(4);
Iterable<BigInt> fibonacci() sync* {
  BigInt previous = BigInt.one;
  BigInt current = BigInt.one;
  yield previous;
  yield current;
  while (true) {
    BigInt next = previous + current;
    yield next;
    previous = current;
    current = next;
  }
}



//The drawing shows 6 squares the sides of which have a length of 1, 1, 2, 3, 5, 8. It's easy to see that the sum of the perimeters of these squares is : 4 * (1 + 1 + 2 + 3 + 5 + 8) = 4 * 20 = 80
//
// Could you give the sum of the perimeters of all the squares in a rectangle when there are n + 1 squares disposed in the same manner as in the drawing:
//
// alternative text
//
// Hint:
// See Fibonacci sequence
//
// Ref:
// http://oeis.org/A000045
//
// The function perimeter has for parameter n where n + 1 is the number of squares (they are numbered from 0 to n) and returns the total perimeter of all the squares.
//
// perimeter(5)  should return 80
// perimeter(7)  should return 216