main() {
  doTest('()', true);
  doTest('([{}])', true);
  doTest('[(])', false);
  doTest('(){}[]', true);
  doTest('([{}])', true);
  doTest('(}', false);
  doTest('[({})](]', false);
}

void doTest(String braces, bool answer) {
  bool result = validBraces(braces);
  bool correct = result == answer;
  print(
      ' $correct ${correct ? '☑ Test Passed' : 'in $braces => $result  is no $answer'}');
}

/* my solution */
bool validBraces1(String braces) {
  int l1 = 0;
  while (l1 != braces.length) {
    l1 = braces.length;
    braces = braces.replaceAll(RegExp(r'(\(\)|\[\]|\{\})'), '');
  }
  return braces.length == 0;
}

/*  The clever solution of other programmers */
bool validBraces2(String braces) {
  String s = braces;
  var regex = RegExp(r'(\(\)|\[\]|\{\})');
  while(regex.hasMatch(s))
    s = s.replaceFirst(regex,'');
  return s.isEmpty;
}


/*  The clever solution of other programmers */
// No clever but use stack and switch case
bool validBraces(String s) {
  var m = {')': '(', ']': '[', '}': '{'};
  var stack = [];
  for (var c in s.split('')) {
    switch (c) {
      case '(':
      case '[':
      case '{':
        stack.add(c);
        break;

      case ')':
      case ']':
      case '}':
        if (stack.isEmpty) return false;
        if (stack.removeLast() != m[c]) return false;
        break;
    }
  }
  return stack.isEmpty;
}