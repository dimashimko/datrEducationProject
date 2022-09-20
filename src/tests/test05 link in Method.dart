main(){
  String a = 'a';
  print(a);
  cleaner(a);
  print(a);

  var bob = Person();
  bob.name = "Bob";
  bob.age = 20;
  print(bob);
  cleaner2(bob);
  print(bob);
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

