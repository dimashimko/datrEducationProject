void main() {
  // main1();
  // main2();
  main3();
}
void main1() {
  showPerson("Tom", 35); // Name: Tom  Age: 35
  showPerson(29, "Alice"); //  Name: 29   Age: Alice !!!
}
void showPerson(name, age){
  print("Name: $name");
  print("Age: $age \n");
}

// Именованные параметры
void main2() {
  showPerson2(name: "Tom", age: 35); // Name: Tom    Age: 35
  showPerson2(age: 29, name: "Alice"); // Name: Alice  Age: 29
  showPerson2(name: "Kate"); // Name: Kate   Age: 0
}
void showPerson2({String name = "undefined", int age=0}){
  print("Name: $name");
  print("Age: $age \n");
}

main3(){
  foo1(5);
  foo1(5, 'bar');

  foo2(5);
  foo2(5, b :'bar');

  // foo3(5); // error
  foo3(5, b :'bar');
}

// optional unnamed
void foo1(int a, [String b = '']){}

// optional named
void foo2(int a, {String b = ''}){}

// optional named
void foo3(int a, {required String b}){

}
