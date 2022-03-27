
void main() {
  print('hi');
  print(binaryArrayToNumber([0, 0, 0, 1])); // 1
  print(binaryArrayToNumber([0, 0, 1, 0])); // 2
  print(binaryArrayToNumber([1, 1, 1, 1])); // 15
  print(binaryArrayToNumber2([0, 1, 1, 0])); // 6
}

/* my solution */
int binaryArrayToNumber(List<int> arr) => int.parse(arr.join(), radix: 2);


/*  The clever solution of other programmers */
int binaryArrayToNumber2(List<int> arr) {
  var res = 0;
  for (var x in arr) {
    print('res: $res');
    res = (res << 1) + x;
    print('res << 1: ${res << 1}        x: $x');
    print('res: $res');
    print('');
  }
  return res;
}