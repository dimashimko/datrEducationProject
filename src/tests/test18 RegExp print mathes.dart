main() {
  var str = "Hi (my) name \\\\ is ().";
  RegExp exp1 = RegExp(r"\)"); // 2 ) )
  printRegExp(exp1, str);


  RegExp exp2 = RegExp(r"m"); // 2 m m
  printRegExp(exp2, str);

  // RegExp exp3 = RegExp("\)"); // error
  // printRegExp(exp3, str);

  RegExp exp4 = RegExp("m"); // 2 m m
  printRegExp(exp4, str);

  RegExp exp5 = RegExp(r"\\"); // 2 m m
  printRegExp(exp5, str);
}

void printRegExp(RegExp exp, String str) {
  print(exp.allMatches(str).length);
  Iterable<Match> matches = exp.allMatches(str);
  // print(matches.join(';'));

  List<String> out = List.generate(0, (index) => '');
  for (final Match m in matches) {
    String match = m[0]!;
    out.add(match);
    // print(match);
  }
  print(out.join(' '));
  print('');

  // What is r"" ?
  // Note the use of a raw string (a string prefixed with r) in the example above.
  // Use a raw string to treat each character in a string as a literal character.

  //Обратите внимание на использование необработанной строки
  // (строка с префиксом r) в приведенном выше примере.
  // Используйте необработанную строку для обработки каждого символа в строке
  // как буквального символа.
}
