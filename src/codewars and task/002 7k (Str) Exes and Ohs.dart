//match - соответстивие

// 002 7k  Exes and Ohs
main() {
/*  print(XO("ooxx")); // => true
  print(XO("xooxx")); // => false
  print(XO("ooxXm")); // => true
  print(XO("zpzpzpp")); // => true
  print(XO("zzoo")); // => false*/

  print(XO("oxXooxOXXOXOXOoOOxXoXXxXoOxooxxxOOXOoXXXOXoOXXXO")); // => false
  print(XO1("oxXooxOXXOXOXOoOOxXoXXxXoOxooxxxOOXOoXXXOXoOXXXO")); // => false
  print(XO2("oxXooxOXXOXOXOoOOxXoXXxXoOxooxxxOOXOoXXXOXoOXXXO")); // => false
  print(XO3("oxXooxOXXOXOXOoOOxXoXXxXoOxooxxxOOXOoXXXOXoOXXXO")); // => false
  print(XO4("oxXooxOXXOXOXOoOOxXoXXxXoOxooxxxOOXOoXXXOXoOXXXO")); // => false
  print('');
  print(XO("zpzpzpp")); // => false
  print(XO1("zpzpzpp")); // => false
  print(XO2("zpzpzpp")); // => false
  print(XO3("zpzpzpp")); // => false
  print(XO4("zpzpzpp")); // => false
}

// my solution
bool XO1(String str) {
  str = str.toLowerCase();
  int x = 0, o = 0; // !!!
  str.split('').forEach((element) {
    if (element == 'x') x++;
    if (element == 'o') o++;
  });
  return x == o;
}

// my solution
bool XO(String str) {
  str = str.toLowerCase();
  RegExp regX = new RegExp('x');
  RegExp regO = new RegExp('o');
  return regX.allMatches(str).length == regO.allMatches(str).length;
}

/*  The clever solution of other programmers */

bool XO2(str) {
  var s = str.toLowerCase();
  return 'x'.allMatches(s).length == 'o'.allMatches(s).length;
}

bool XO3(String assertedString) {
  var letters = Map();

  assertedString.toLowerCase().split('').forEach((character) {
    letters[character] ??= 0; // !!!
    letters[character]++;
  });

  return letters["x"] == letters["o"];
}

bool XO4(String str) =>
    str.split('').where((item) => item.toLowerCase() == 'x').length == //!!!
    str.split('').where((item) => item.toLowerCase() == 'o').length;
