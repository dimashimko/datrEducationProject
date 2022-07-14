
main() {
  /* my solution */
  /*  The clever solution of other programmers */

  
/*  String s = 'ab(789 ) c';
  print(s);
  s = s.replaceAll(RegExp(r'\(\)'), '');
  print(s);*/

/*  String result = '()()((()';
  var regex = RegExp(r'(\(\))');
  print(regex.allMatches(result).length);*/

  RegExp exp = RegExp(r"\)");
  var str = "Hi (my) name  is ().";
  print(exp.allMatches(str).length);
  Iterable<Match> matches = exp.allMatches(str);
  for (final Match m in matches) {
    String match = m[0]!;
    print(match);
  }

}

