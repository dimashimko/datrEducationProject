main() {
  testing("aretheyhere", "yestheyarehere", "aehrsty");
  testing("loopingisfunbutdangerous", "lessdangerousthancoding",
      "abcdefghilnoprstu");
  testing("inmanylanguages", "theresapairoffunctions", "acefghilmnoprstuy");
  testing("lordsofthefallen", "gamekult", "adefghklmnorstu");
  testing("codewars", "codewars", "acdeorsw");
  testing(
      "agenerationmustconfrontthelooming", "codewarrs", "acdefghilmnorstuw");
}

void testing(String s, String t, String u) {
  String actual = longest(s, t);
  if (actual == u) {
    print('true');
  } else
    print('Expected: ${u} \n  Actual: $actual');
}

// my solution
String longest(String a, String b) {
  List<String> mass = (a + b).split('');
  mass.sort((a, b) => a.compareTo(b));
  String resultLine = '';
  for (var o in mass) if (!resultLine.contains(o)) resultLine += o;
  return resultLine;
}

/*  The clever solution of other programmers */
String longest2(String a, String b) {
  var strings = (a + b).split('');
  strings.sort();

  return strings.toSet().join();
}

/*  The clever solution of other programmers */
longest3(a, b) => (((a + b).split('').toSet().toList())..sort()).join();
