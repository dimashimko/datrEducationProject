import 'dart:math' as math;

void main() {
  doTest(1021, [10, 2]);
  doTest(477557101, [28, 7]);
  doTest(477557102, [47, 7]);
  doTest(109, [-8, 1]);
}

void doTest(int n, List<int> list) {
  print('$list = ${seven(n)} = ${list.toString() == seven(n).toString()}');
}

/* my solution */
List<int> seven(int m) {
  int c = 0;
  while(m>99){
    m = (m~/10)-m%10*2;
    c++;
  }
  return [m, c];
}
