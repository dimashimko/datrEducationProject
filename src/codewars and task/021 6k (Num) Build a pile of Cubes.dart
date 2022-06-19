import 'dart:math';

main() {
  dotest(4183059834009, 2022);
  dotest(24723578342962, -1);
  dotest(135440716410000, 4824);
  dotest(40539911473216, 3568);
  dotest(26825883955641, 3218);
}

void dotest(int m, int answer) {
  int result = findNb(m);
  bool correct = result == answer;
  print(' $correct ${correct ? '☑ Test Passed' : '$result is no $answer'}');
}

/* my solution */
int findNb1(int m) {
  int n = 0;
  while (count(n) < m) {
    n++;
  }
  return count(n)==m? n : -1;
}

int count(int n) {
  int sum = 0;
  while (n>0) {
    sum += pow(n, 3).toInt();
    n--;
  }
  return sum;
}

/*  The clever code of other programmers */
int findNb2(int m) {
  var sum = 0;
  var i = 1;
  while(sum < m){
    sum += i*i*i;
    i++;
  }
  return sum == m ? i-1 : -1;
}

/*  The clever code of other programmers */
int findNb(int m) {
  var n = 0;
  var volume = 0;
  while (volume < m) {
    n++;
    volume += n * n * n;
  }
  if (volume > m) return -1;
  return n;
}