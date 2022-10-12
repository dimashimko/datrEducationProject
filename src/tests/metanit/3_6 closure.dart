Function multiply(int n){

  return (int m) => n * m;
}
void main() {

  Function func = multiply(5);
  int result1 = func(6); // 30
  print(result1);        // 30

  int result2 = func(5); // 25
  print(result2);       // 25
}