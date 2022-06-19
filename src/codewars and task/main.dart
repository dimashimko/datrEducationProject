
main() {
  /* my solution */
  /*  The clever solution of other programmers */
  RegExp exp = RegExp("[^:;\\-~)D]");
  var str = ":);(;}}}:D";
  print(exp.allMatches(str).length);
  Iterable<Match> matches = exp.allMatches(str);
  for (final Match m in matches) {
    String match = m[0]!;
    print(match);
  }

/*  RegExp exp = RegExp('[^a]');
  var str = 'aabaaccaa';
  print(exp.allMatches(str).length);*/



}

