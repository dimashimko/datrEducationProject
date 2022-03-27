main(){
  test('az'); //equals("1/2"));
  test('aaaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbmmmmmmmmmmmmmmmmmmmxyz'); //equals("3/56"));
  test('kkkwwwaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbmmmmmmmmmmmmmmmmmmmxyz'); // equals("6/60"));
  test('kkkwwwaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbmmmmmmmmmmmmmmmmmmmxyzuuuuu'); // equals("11/65"));
}

void test(String s){
  // print(printerError(s));
  print(printerError2(s));
  // print(printerError3(s));
}


/* my solution 1 */
String printerError(String s) {
  int counter = 0;
  s.split('').forEach((element) {
    if('nopqrstuvwxyz'.contains(element)) counter++;
  });
  return '$counter/${s.length}';
}


/*  The clever solution of other programmers */
final RegExp reError = new RegExp("[^a-m]");
String printerError2(String s) {
  return "${reError.allMatches(s).length}/${s.length}";
}


/*  The clever solution of other programmers */
String printerError3(String s) => RegExp(r"[nopqrstuvwxyz]").allMatches(s).length.toString() + "/" + s.length.toString();


/*  The clever solution of other programmers */
String printerError4(String s) {
  var errorsNb = s.split('').where((c) => c.codeUnitAt(0) > 'm'.codeUnitAt(0));
  return errorsNb.length.toString()+"/"+s.length.toString();
}


/*  The clever solution of other programmers */
final int MAX_RUNE = 109; // code point for 'm';
String printerError5(String s) {
  int nErrors = s.runes.fold(0, (acc, r) => r > MAX_RUNE ? acc + 1 : acc);
  return "$nErrors/${s.length}";
}


/*  The clever solution of other programmers */
String printerError6(String s) {
  int errorCount = 0;
  s.toLowerCase().codeUnits.map( (c) => c < 'n'.codeUnitAt(0) ? errorCount: ++errorCount).toList();
  return "$errorCount/${s.length}";
}

/*  The clever solution of other programmers */
String printerError7(String s) => s.split('').where((x) => x.codeUnitAt(0) > 109).length.toString() + "/" + s.length.toString();









/*  // reError.allMatches(s).first.end
  print('****************');
  print(reError.allMatches(s).first);
  print(reError.allMatches(s).first.input);
  print(reError.allMatches(s).first.start);
  print(reError.allMatches(s).first.end);
  print(reError.allMatches(s).first.groupCount);
  print(reError.allMatches(s).first.hashCode);
  print(reError.allMatches(s).first.pattern);
  print('');
  print(reError.allMatches(s).last);
  print(reError.allMatches(s).last.input);
  print(reError.allMatches(s).last.start);
  print(reError.allMatches(s).last.end);
  print(reError.allMatches(s).last.groupCount);
  print(reError.allMatches(s).last.hashCode);
  print(reError.allMatches(s).last.pattern);
  print('****************');*/
