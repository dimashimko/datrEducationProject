void main() {
    tester("()()((()", false);
    tester("()", true);
    tester("()()", true);
    tester("(())", true);
    tester(")", false);
    tester("", true);
    tester("())", false);
    tester("((((()))))", true);
    tester("()))", false);
    tester("()()()())", false);
    tester("(()()()())(())", true);
    tester("((((((((", false);
    tester("(())((()((()))))", true);
    tester("())(", false);
    tester(")()()()(", false);
    tester("(()()))(", false);
    tester(")()(", false);
    tester("())(()", false);
}

void tester(String str, bool rightAnswer){
  print('${validParentheses(str) == rightAnswer} for: $str');
}

/* my solution */
bool validParentheses1(String braces) {
  int counter = 0;
  for(final element in braces.split('')){
    if(element == '(') counter++;
    if(element == ')') counter--;
    if(counter <0) break;
  }
  return counter==0;
}

/*  The clever solution of other programmers */
bool validParentheses2(String parentheses) {
  try { new RegExp(parentheses); }
  catch (_) { return false; }
  return true;
}

/*  The clever solution of other programmers */
bool validParentheses3(String braces) {
  String s = braces;
  while (s.contains("()")) {
    s = s.replaceAll("()", "");
  }
  return s.isEmpty;
}

/*  The clever solution of other programmers */
bool validParentheses(String braces){
  String result = braces;
  var regex = RegExp(r'(\(\))');
  while(regex.hasMatch(result)){
    result = result.replaceFirst(regex, '');
  }
  return result.isEmpty;
}

/*  The clever solution of other programmers WITH MY CHANGE */
bool validParentheses5(String braces){
  var regex = RegExp(r'(\(\))');
  while(regex.hasMatch(braces)){
    braces = braces.replaceFirst(regex, '');
  }
  return braces.isEmpty;
}