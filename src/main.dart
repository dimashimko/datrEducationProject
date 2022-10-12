const int defaultValue = 3;

void f([int value = defaultValue]) {
  value++;
  print(value);
}

main(){
f();
}
