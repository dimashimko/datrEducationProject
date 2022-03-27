void main() {
  test(""); //, equals(0));
  test("abcde"); //, equals(0));
  test("aabbcde"); //, equals(2));
  test("aabBcde"); //, equals(2));
  test("Indivisibility"); //, equals(1));
}

void test(String str) {
  print(duplicateCount(str));
}

/* my solution */
int duplicateCount(String text) {
  text = text.toLowerCase();
  return text
      .split('')
      .where((e) => e.allMatches(text).length > 1)
      .toSet()
      .length;
}

/*
*/ /*  The clever??? solution of other programmers with my changes */
int duplicateCount3(String text) {
  text = text.toLowerCase();
  Map<String, int> letterMap = {};
  text.split("").forEach((letter) {
    if (letterMap[letter] == null) {
      letterMap[letter] = 1;
    } else {
      var oldNum = letterMap[letter] ?? 0;
      var newNum = oldNum + 1;
      letterMap[letter] = newNum;
    }
  });
  return letterMap.values.where((value) => value > 1).length;
}

/*  The clever??? solution of other programmers */ /*

int duplicateCount4(String text) {
  final countMap = <String, int>{};
  for (final c in text.split('')) {
    if (countMap[c.toLowerCase()] == null){
      countMap[c.toLowerCase()] ==0;
    } else{
      countMap[c.toLowerCase()]!++;
    }
    // countMap[c.toLowerCase()] ??= 0;
    // countMap[c.toLowerCase()] += 1;
  }
  return countMap.values.where((e) => e > 1).length;
}

*/
/*  The clever??? solution of other programmers */ /*

int duplicateCount5(String text) {
  var counts = <String, int>{};
  text
      .split('')
      .map((e) => e.toLowerCase())
      .forEach((e) => counts.containsKey(e) ? counts[e]++ : counts[e] = 1);
  return counts.values.where((element) => element > 1).length;
}

*/
/*  The clever??? solution of other programmers */ /*

int duplicateCount6(String text){
  Map<String, int> foundLetters = {};
  int count = 0;

  for(int i = 0; i < text.length; i++) {
    var char = text[i].toLowerCase();
    if(foundLetters[char] == null)
      foundLetters[char] = 1;
    else
      foundLetters[char]++;
  }

  return foundLetters.values.where((value) => value > 1).toList().length;
}*/
