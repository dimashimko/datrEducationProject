
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


bool validBraces(String braces) {
  int l1 = 0;
  int l2 = braces.length;
  while (l1!=l2){
    l1 = l2;
    braces.replaceAll(RegExp(r'\(\)'), 'é');
    
  }
  return false;
}


bool validBraces2(String braces) {
  int a = 0;
  int b = 0;
  int c = 0;
  for(final element in braces.split('')){
    if(element == '(') a++;
    if(element == ')') a--;
    if(element == '[') b++;
    if(element == ']') b--;
    if(element == '[') c++;
    if(element == ']') c--;
    if(a<0 || b<0 || c<0) break;
  }
  return (a==0 && b==0 && c==0);
}