import 'dart:math';

main() {
  int sample = 1000000;
  for (int i = 0; i < 10; i++) {
    count(sample);
  }
}

void count(int sample) {
  var list = List.filled(12, 0);
  for (int i = 0; i < sample; i++) {
    Random r = Random();
    int a = r.nextInt(6) + 1;
    int b = r.nextInt(6) + 1;
    // print('${a}+${b}=${a+b}');
    list[a + b - 1]++;
  }
  var listPercent = List.filled(12, '0.0');

  for (int j = 0; j < list.length; j++) {
    listPercent[j] = (list[j] * 100 / sample).toStringAsFixed(2);
  }
  print('$listPercent');

}
