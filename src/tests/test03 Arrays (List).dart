import 'dart:math';

main() {
  print('Hello world');
  // Random r = Random();

  int a = 5; // column
  int b = 6; // row

  // var list1 = List.generate(a, (i) => List(b));
  var list1 = List.generate(a, (i) => List.generate(b, (j) => (i * b) + j));
  var list2 = ['lb1', 'lb2', 'lb3', 'lb4', 'lb1', 'lb2', 'lb3', 'lb4'];
  var list3 = List.filled(0, '', growable: true);
  // list3.add(list2);
  list3.add('hey');

  print(list1);
  print(list2);
  print(list3);


}
