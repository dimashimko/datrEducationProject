import 'dart:convert';

main() {
  var lst = [[2, 4],[1, 3],[1, 4]];
  doTest(lst, "(6,12)(4,12)(3,12)");
  lst = [ [69, 130], [87, 1310], [3, 4] ];
  doTest(lst, "(18078,34060)(2262,34060)(25545,34060)");
  lst = [ [77, 130], [84, 131], [3, 4] ];
  doTest(lst, "(20174,34060)(21840,34060)(25545,34060)");
  lst = [ [6, 13], [187, 1310], [31, 41] ];
  doTest(lst, "(322260,698230)(99671,698230)(527930,698230)");
  lst = [ [8, 15], [7, 111], [4, 25] ];
  doTest(lst, "(1480,2775)(175,2775)(444,2775)");
  lst = [[2, 2], [3, 1], [4, 1], [5, 1]];
  doTest(lst, '(1,1)(3,1)(4,1)(5,1)');
  lst = [[4, 8], [4, 5], [3, 4], [6, 9], [7, 10]];
  doTest(lst, '(30,60)(48,60)(45,60)(40,60)(42,60)');
}

void doTest(final List<List<int>> lst, String answer) {
  print(lst);
  String result = convertFrac(lst);
  print(lst);
  bool correct = result == answer;
  print(
      ' $correct ${correct ? '☑ Test Passed' : 'in $lst => \n $result  is no $answer\n'}');
}

/* my solution */
String convertFrac1(List<List<int>> lst) {
  // make copy list lst
  List<List<int>> sLst =
      List.generate(lst.length, (index) => List.generate(2, (i) => 0));
  for (int i = 0; i < sLst.length; i++) {
    for (int j = 0; j < sLst[0].length; j++) {
      sLst[i][j] = lst[i][j];
    }
  }

  // simplify
  for (int f = 0; f < sLst.length; f++) {
    var s = sLst[f];
    for (int i = s[0]; i > 1; i--) {
      if (s[0] % i == 0 && s[1] % i == 0) {
        s[0] = s[0] ~/ i;
        s[1] = s[1] ~/ i;
      }
    }
    sLst[f] = s;
  }

  List<int> denominators =
      List.generate(sLst.length, (index) => sLst[index][1]);
  denominators.sort();
  int max = denominators.last;
  int i = 1;
  int newDenom = max;
  bool isFoundCommonDenominators = false;
  while (!isFoundCommonDenominators) {
    isFoundCommonDenominators = true;
    newDenom = max * i;
    i++;
    for (var d in denominators) {
      if (newDenom % d != 0) {
        isFoundCommonDenominators = false;
        continue;
      }
    }
  }

  for (int j = 0; j < sLst.length; j++) {
    sLst[j][0] = (newDenom / sLst[j][1] * sLst[j][0]).toInt();
    sLst[j][1] = newDenom;
  }
  return sLst.map((e) => '(${e[0]},${e[1]})').join();
}


/*  The clever solution of other programmers */
// gcd Возвращает наибольший общий делитель этого целого числа и other. print(10.gcd(12)); // 2; print(8.gcd(4)); // 4;
String convertFrac(lst) {
  lst = lst.map((x) {
    int d = x[0].gcd(x[1]);
    return [x[0] ~/ d, x[1] ~/ d];
  });
  final lcm = lst.fold(1, (r, x) => r * x[1] ~/ r.gcd(x[1]));
  return lst.map((x) => '(${x[0] * lcm ~/ x[1]},$lcm)').join();
}
