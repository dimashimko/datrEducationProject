import 'dart:math';

void main() {
  // test();

  dotest(825, "(3)(5)(5)(11)");
  dotest(841, "(29**2)");
  dotest(7775460, "(2**2)(3**3)(5)(7)(11**2)(17)");
  dotest(7919, "(7919)");
  dotest(17*17*93*677, "(3)(17**2)(31)(677)");
  dotest(342217392, "(2**4)(3)(11)(43)(15073)");
  dotest(42777174 , "(2)(3)(11)(43)(15073)");
  dotest(933555431, "(7537)(123863)");
  dotest(35791357 , "(7)(5113051)");
  dotest(841, "(29**2)");
}

dotest(int num, String ans) {
  String result = primeFactors2(num);
  print('$num: $ans == $result ? ');
  print('${ans == result}');
  print('');
}


/* my solution */
String primeFactors(int n) {
  List<int> factors = [];
  List<int> primeList = [];
  int p = 2;


  int findNewPN() {
    if (primeList.length == 0)return 2;
    if (primeList.length == 1)return 3;

    int i = primeList.last;
    bool isPrime;
    do {
      isPrime = true;
      i+=2;
      for (int j = 0; j < sqrt(primeList.length); j++) {
        if (i % primeList[j] == 0) {
          isPrime = false;
          break;
        }
      }
    } while (!isPrime);
    return i;
  }

  String toStringFormat(){
    String s = '';
    Set set = factors.toSet();
    for (var n in set) {
      s+='(';
      int amount = factors.where((e) => e==n).length;
      if (amount==1){
        s+='$n';
      } else {
        s+='$n**${amount}';
      }
      s+=')';
    }
    return s;
  }

  do {
    if (n % p == 0) {
      factors.add(p);
      n = n ~/ p;
    } else {
      p = findNewPN();
      if (p > sqrt(n)) {
        factors.add(n);
        break;
      }
      primeList.add(p);
    }
  } while (n != 1);

  return toStringFormat();
}


/*  The clever solution of other programmers */
String primeFactors2(int n){
  String res = "";
  for (var i = 2; i <= n; i++) {
    int cnt = 0;
    while (n % i == 0) { cnt++; n ~/= i; }
    res += (cnt != 0) ? "(" + ( cnt > 1 ? i.toString() + "**" + cnt.toString()  : i.toString() ) + ")" : "";
  }
  return res;
}

/*  The clever solution of other programmers */
/*String primeFactors3(int n) {
  var quot = n;
  var map = <int, int>{};

  for (var i = 2; i <= n; i++) {
    if (quot % i == 0) {
      while (quot % i == 0) {
        map.containsKey(i) ? map[i]++ : map[i] = 1;
        quot = quot ~/ i;
      }
      if (quot == 1) break;
    }
  }

  var list = <String>[];

  map.forEach((key, value) =>
  value == 1 ? list.add('($key)') : list.add('($key**$value)'));

  return list.join();
}*/



// 2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197, 199
//[2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197, 199]













// Garbage (my first try to write solutions)
String primeFactors99(int n) {
  List<int> simplifiers = [];
  List<int> primeList = [2,3];

  int toExtendPrimeList(n){
    for(int i = primeList.last+2; i<n/2;){
      bool prime = true;
      for (int j = 0; j < sqrt(primeList.length); j++) {
        if (i%primeList[j] == 0){
          prime=false;
          break;
        }
      }
      if (prime){
        primeList.add(i);
        return i;
      } else {
        i+=2;
      }

    }
    return -1;
  }

  int simplify(int n) {
    for (var pl in primeList) {
      if (n % pl == 0) {
        simplifiers.add(pl);
        return n ~/ pl;
      }
    }
    int newPN = toExtendPrimeList(n);
    while(newPN != -1){
      if (n%newPN==0){
        simplifiers.add(newPN);
        return n ~/ newPN;
      }
      newPN = toExtendPrimeList(n);
      // print('newPN: $newPN');
    }
    simplifiers.add(n);
    return -1;
  }
  // print('n: $n');
  while (n != -1 && n!=1) {
    n = simplify(n);
    print('n: $n');
  }

  String toStringFormat(){
    String s = '';
    Set set = simplifiers.toSet();
    for (var n in set) {
      s+='(';
      int amount = simplifiers.where((e) => e==n).length;
      if (amount==1){
        s+='$n';
      } else {
        s+='$n**${amount}';
      }
      s+=')';
    }
    return s;
  }
  // print('primList: $primeList');
  return toStringFormat();
}



test() {
  List<int> primeList = [];
  for (int i = 2; i < 200; i++) {
    bool prime = true;
    for (var pn in primeList) {
      if (i % pn == 0) {
        prime = false;
        break;
      }
    }
    if (prime) primeList.add(i);
  }
  print(primeList);

}
