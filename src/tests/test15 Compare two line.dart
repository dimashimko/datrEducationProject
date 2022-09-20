main() {
  var a = [1, 1, 1];
  var b = [1, 1, 1];
  print(a.toString() == b.toString); // false !!!
  print(a.toString() == b.toString()); //true

  String s1 = a.toString();
  String s2 = b.toString();
  print(s1 == s2); // true
  print('$s1' == '$s2'); // true
}
