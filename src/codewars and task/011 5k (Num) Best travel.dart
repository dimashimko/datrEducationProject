import 'dart:math';
// import 'dart:math' as math;

main() {
  // t (maximum sum of distances
  // k (number of towns to visit
  List<int> ts = [50, 55, 56, 57, 58];
  dotest(163, 3, ts, 163);
  ts = [50];
  dotest(163, 3, ts, -1);
  ts = [91, 74, 73, 85, 73, 81, 87];
  dotest(230, 3, ts, 228);
  dotest(331, 2, ts, 178);
  dotest(331, 4, ts, 331);

  ts = [100, 76, 56, 44, 89, 73, 68, 56, 64, 123, 2333, 144, 50, 132, 123, 34, 89];
  dotest(430, 5, ts, 430);
  ts = [100, 76, 56, 44, 89, 73, 68, 56, 64, 123, 2333, 144, 50, 132, 123, 34, 89];
  dotest(3760, 17, ts, 3654);
}

void dotest(int t, int k, List<int> ls, int corectAnswer) {
  int result = chooseBestSum4(t, k, ls);
  print('$t, $k, $ls correct: $corectAnswer == $result ?');
  print(result == corectAnswer);
  print('');
}


int chooseBestSum1(int t, int k, List<int> ls) {
  int allCombinations = pow(2, ls.length).toInt() - 1;
  List<int> mass = [];

  // iteration over all numbers
  for (int i = 0; i <= allCombinations; i++) {
    String binNum = i.toRadixString(2).padLeft(ls.length, '0');

    // selection of numbers with the desired number of units
    if ('1'.allMatches(binNum).length == k) {
      int maxDistance = 0;

      // iterate over each character '0' or '1' and sum
      for (int j = 0; j < binNum.length; j++) {
        if (binNum.split('')[j] == '1') maxDistance += ls[j];
      }
      mass.add(maxDistance);
    }
  }
  mass.sort((a,b) => b.compareTo(a));
  for (var m in mass) if (m <= t) return m;
  return -1;
}

/* my solution 2*/
int chooseBestSum2(int t, int k, List<int> ls) {
  int allCombinations = pow(2, ls.length).toInt();

  List<String> binNumbers = List.generate(
          allCombinations, (i) => i.toRadixString(2).padLeft(ls.length, '0'))
      .where((e) => '1'.allMatches(e).length == k)
      .toList();

  List<int> masss = List.generate(
      binNumbers.length,
      (index) => List.generate( // index - numbers of binary numbers
              binNumbers[index].length,
              (index2) => // index2 - each number is '0' or '1'
                  binNumbers[index].split('')[index2] == '0' ? 0 : ls[index2])
          .reduce((a, b) => a + b))..sort((a,b) => b.compareTo(a));

  for (var m in masss) if (m <= t) return m;
  return -1;
}

/*  The clever solution of other programmers */
int aux(int t, int k, List<int> ls, int frm) {
  if (k == 0) {
    if (t >= 0) return 0; else return t;
  } else {
    if (t < k) return -1;
  }
  int best = -1; int tmpBest;
  for (int i = frm; i < ls.length; i++) {
    tmpBest = aux(t - ls[i], k - 1, ls, i + 1);
    if (tmpBest >= 0)
      best = max(best, ls[i] + tmpBest);
  }
  return best;
}
int chooseBestSum3(int t, int k, List<int> ls) {
  return aux(t, k, ls, 0);
}

/*  The clever solution of other programmers */
int chooseBestSum4(int d, int t, List<int> lst) {
  if (t > lst.length) {
    return -1;
  }

  List<int> pos = List.generate(t, (i) => lst.length - t + i);

  int sum = d + 1;
  int mx = 0;

  while (true) {
    sum = pos.fold(0, (prev, curr) => prev + lst[curr]);
    if (sum <= d && sum > mx) {
      mx = sum;
    }

    if (pos.last == pos.length - 1) {
      break;
    }

    if (pos[0] != 0) {
      pos[0]--;
    } else {
      for (int i = 0; i < pos.length; ++i) {
        if (pos[i] != i) {
          pos[i]--;
          for (int j = 0; j < i; ++j) {
            pos[j] = pos[i] - i + j;
          }
          break;
        }
      }
    }
  }

  if (mx > d || mx == 0) {
    return -1;
  }
  return mx;
}
