void main (){

  Person dima = Person._();
  dima.display();

  Person bob = Person.undefined();      // вызов первого конструктора без параметров
  bob.display();

  Person tom = Person.fromName("Tom"); // вызов второго конструктора с одним параметром
  tom.display();

  Person sam = Person("Sam", 25); // вызов третьего конструктора с двумя параметрами
  sam.display();
}

class Person{

  String name = "";
  int age = 0;

  Person._();

  Person.undefined(){
    name = "undefined";
    age = 18;
  }
  Person.fromName(String n){
    name = n;
    age = 18;
  }

  Person(String n, int a)
  {
    name = n;
    age = a;
  }

  void display(){
    print("Name: $name Age: $age");
  }
}