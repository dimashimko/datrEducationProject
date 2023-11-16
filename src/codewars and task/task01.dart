List<String> capitalize(String x) {
  String result1 = '';
  String result2 = '';
  List<String> list = x.split('');
  for (int i = 0; i < x.length; i++) {
    if (i % 2 == 0) {
      result1 += list[i].toString().toUpperCase();
      result2 += list[i].toString();
    } else {
      result1 += list[i].toString();
      result2 += list[i].toString().toUpperCase();
    }
  }
  return [result1, result2];
}

main() {
  print(capitalize('abcdef'));
  print(capitalize('abcdef'));
}
