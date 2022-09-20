void main (){

  Person tom = Person("Tom", 23);
  tom.display();
}

class Person{

  String name = "";
  int age = 0;


  Person(userName, userAge) : name=userName, age = userAge + 10 {
    age = 8;
  }

  void display(){
    print("Name: $name Age: $age");
  }
}