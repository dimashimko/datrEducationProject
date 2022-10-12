main() {
  test([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 1, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
  test([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 2, [2, 4, 6, 8, 10, 3, 7, 1, 9, 5]);
  test(['C', 'o', 'd', 'e', 'W', 'a', 'r', 's'], 4, ['e', 's', 'W', 'o', 'C', 'd', 'r', 'a']);
  test([1, 2, 3, 4, 5, 6, 7], 3, [3, 6, 2, 7, 5, 1, 4]);
  test([], 3, []);
}

void test(List items, int k, List answer) {
  List result = josephus(items, k);
  bool correct = result.join('') == answer.join('');
  print(
      ' $correct ${correct ? '☑ Test Passed' : ' $result  is no $answer'}');
}

/* my solution */
List josephus(final List items, final int k) {
  List result = [];
  int index = 0;
  while(items.length >0) {
    index = (index+k-1)%items.length;
    result.add(items.removeAt(index));
  }
  return result;
}


/* my solution */
List josephus2(final List items, final int k) {
  if(items.length == 0) return [];
  Set<Man> mans = {};
  Man a = Man(null, 0);
  Man b = Man(null, 0);

  for (int j = 0; j < items.length; j++) {
    a.next = b;
    a.name = items[j];
    mans.add(a);
    a=b;
    b = Man(null, 0);
  }
  mans.last.next = mans.first;
  print(mans);
  return [];

}

class Man<E>{
  late Man? next;
  late E name;
  Man(Man? m, E n){
    next = m;
    name = n;
  }

  @override
  String toString() {
    return '$name [${next?.name!}]';
  }
}

/*  The clever solution of other programmers */
List josephus3(final List items, final int k) {
  final ans = [];
  var i = 0;
  while (items.isNotEmpty) {
    i = (i + k - 1) % items.length;
    ans.add(items.removeAt(i));
  }
  return ans;
}