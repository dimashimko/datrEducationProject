void main() {
  print(148.toRadixString(16));

  print(rgb(255, 255, 255)); //, equals('FFFFFF'));
  print(rgb(255, 255, 300)); //, equals('FFFFFF'));
  print(rgb(0, 0, 0)); //, equals('000000'));
  print(rgb(148, 0, 211)); //, equals('94 00 D3'));
  print(rgb(148, -20, 211)); //, equals('9400D3'));
  print(rgb(144, 195, 212)); //, equals('90C3D4'));
  print(rgb(212, 53, 12)); //, equals('D4350C'));
}

/* my solution */
String rgb1(int r, int g, int b) {
  String answer = '';
  answer += toRadix(r);
  answer += toRadix(g);
  answer += toRadix(b);
  return answer.toUpperCase();
}

String toRadix(int n) {
  if (n > 255) n = 255;
  if (n < 0) n = 0;
  String s = n.toRadixString(16);
  if (s.length == 1) s = '0$s';
  return s;
}

/*  The clever solution of other programmers */
String rgb(int r, int g, int b) {
  return [r, g, b]
      .map((e) => e.clamp(0, 255).toInt().toRadixString(16).padLeft(2, '0'))
      .join()
      .toUpperCase();
}

/*  The clever solution of other programmers */
String rgb3(int r, int g, int b) {
  List<String> hexScheme = [
    '0',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    'A',
    'B',
    'C',
    'D',
    'E',
    'F'
  ];
  for (var o in hexScheme) {

  }
  String convert(int n) {
    if (n < 0) {
      n = 0;
    } else if (n > 255) {
      n = 255;
    }
    return '${hexScheme[n ~/ 16]}${hexScheme[n % 16]}';
  }

  return convert(r) + convert(g) + convert(b);
}

/*  The clever solution of other programmers */
String toHex(int value) =>
    value.toRadixString(16).padLeft(2, '0').toUpperCase();
String rgb4(int r, int g, int b) {
  if (r > 255) r = 255;
  if (g > 255) g = 255;
  if (b > 255) b = 255;
  if (r < 0) r = 0;
  if (g < 0) g = 0;
  if (b < 0) b = 0;

  return ("${toHex(r)}${toHex(g)}${toHex(b)}");
}

/*  The clever solution of other programmers */
String rgb5(int r, int g, int b) {
  String ans = '';
  for (var i in [r, g, b]) {
    if (i <= 0)
      ans += '00';
    else if (i >= 255)
      ans += 'FF';
    else
      ans += i.toRadixString(16).padLeft(2, "0").toUpperCase();
    print(i);
  }
  return ans;
}
