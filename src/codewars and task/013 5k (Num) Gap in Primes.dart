import 'dart:math';

void main() {
  doTest(2, 100, 110, [101, 103]);
  doTest(2, 101, 103, [101, 103]);
  doTest(4, 100, 110, [103, 107]);
  doTest(6, 100, 110, []);
  doTest(8, 300, 400, [359, 367]);
  doTest(10, 300, 400, [337, 347]);
}

doTest(int g, int m, int n, List ans) {
  List result = gap(g, m, n);
  print('*g:$g m:$m n:$n*   $result == $ans ?');
  print(result.toString() == ans.toString());
  print('');
}

List<int> gap(int g, int m, int n) {
  List<int> primeList = [];
  List<int> result = [];

  int findNewPN() {
    int findNew() {
      if (primeList.length == 0) return 2;
      if (primeList.length == 1) return 3;

      int i = primeList.last;
      bool isPrime;
      do {
        isPrime = true;
        i += 2;
        for (int j = 0; j < sqrt(primeList.length); j++) {
          if (i % primeList[j] == 0) {
            isPrime = false;
            break;
          }
        }
      } while (!isPrime);
      return i;
    }

    int n = findNew();
    primeList.add(n);
    return n;
  }

  int a = findNewPN();
  int b = 0;

  while (b <= n) {
    b = findNewPN();
    if (a >= m) {
      if (b - a == g) {
        result.add(a);
        result.add(b);
        break;
      }
    }
    a = b;
  }

  // your code
  return result;
}

// 2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197, 199
//   doTest(2, 100, 110, [101, 103]);