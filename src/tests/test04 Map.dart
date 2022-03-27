void main() {
  // var2
  var letterMap = <String, int>{};
  'texttext'.split("").forEach((letter) {
    if (letterMap.containsKey(letter)) {
      var num = letterMap[letter]?? 0;
      letterMap[letter] = ++num;
    } else {
      letterMap[letter] = 1;
    }
  });

  print(letterMap);

  // var1
/*
  var letterMap = <String, int>{};
  'texttext'.split("").forEach((letter) {
    if (letterMap.containsKey(letter)) {
      var oldNum = letterMap[letter]?? 0;
      var newNum = oldNum+1;
      letterMap[letter] = newNum;
    } else {
      letterMap[letter] = 1;
    }
  });

  print(letterMap);*/
}

main2() {
  print('dima');
  var map = {1: 'one', 2: 'two'};

  var map2 = <String, int>{};

  Map<String, int> map3 = {};

  var map4 = Map();

  print(map);
  print(map2);
  print(map3);
  print(map4);
}
