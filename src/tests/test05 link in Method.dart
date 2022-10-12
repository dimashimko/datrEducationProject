main(){
  String a = 'a';
  print(a); //
  cleaner(a);
  print(a); //

  var bob = Person();
  bob.name = "Bob";
  bob.age = 20;
  print(bob); // age:20 name:Bob
  cleaner2(bob);
  print(bob); //age:0 name:****
}

 void cleaner(String s){
  s = '';
 }

 class Person{
  int age =0;
  String name = "";
  @override
  String toString() => "age:$age name:$name";
}

void cleaner2(Person p){
  p.age = 0;
  p.name = "****";
}

