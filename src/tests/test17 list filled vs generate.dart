main() {
  var shared = List.filled(3, []);
  print(shared); // [[], [], []]
  shared[1].add(499);
  shared[0].add(500);
  print(shared); // [[499, 500], [499, 500], [499, 500]] !!!!

  print('');

  var shared2 = List.generate(3,(i) => []);
  shared2[1].add(499);
  shared2[1].add(500);
  print(shared2); // [[], [499, 500], []]
}

