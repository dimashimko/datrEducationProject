main() {
  print(validBraces( '()' )); // true
  print(validBraces( '[(])' )); // false
}

bool validBraces(String braces) {
  int length = 0;
  while (true){
    length = braces.length;
    braces = braces.replaceAll('()', '');
    braces = braces.replaceAll('[]', '');
    braces = braces.replaceAll('{}', '');
    if (length == braces.length) {
      return braces.isEmpty;
    }
  }
}
