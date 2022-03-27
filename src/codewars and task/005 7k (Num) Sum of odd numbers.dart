import 'dart:math';

void main() {
  rowSumOddNumbers(1); //1
  rowSumOddNumbers(2); //8
  rowSumOddNumbers(3); // 27
  rowSumOddNumbers(4); //64
  rowSumOddNumbers(5); //125
  rowSumOddNumbers(41); //68921
  rowSumOddNumbers(101); //1030301

}

/* my solution */
int rowSumOddNumbers(int n) => (n * pow(n, 2).toInt());

/*  The clever solution of other programmers */
// int rowSumOddNumbers2(int n) => pow(n,3);

int rowSumOddNumbers3(int n) => n * n * n;
