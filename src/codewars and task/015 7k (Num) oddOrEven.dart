

main(){
  print(oddOrEven([1, 1]) == "even");
  print(oddOrEven([1, 3])== "even");
  print(oddOrEven([-2, 3]) == "odd");
  print(oddOrEven([17, 21, 99]) == "odd");
  print(oddOrEven([-2, 2, 9, 8, 3]) == "even");

}

/* my solution 2 */
String oddOrEven(List<int> array) {
  var isOdd = array.reduce((value, element) => value + element)%2==1;
  return isOdd? 'odd':'even';
}

/* my solution */
String oddOrEven2(List<int> array) {
  int sum = 0;
  for (var o in array) {
    sum += o;
  }
  if(sum%2 == 1) return 'odd';
  // array.fold(0, (prev, element) => prev + element);
  return 'even';
}