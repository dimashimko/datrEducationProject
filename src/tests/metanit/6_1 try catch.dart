void main (){

  try{
    Person tom = Person("Tom", -45);
    print(tom.age);
  }
  on AgeException catch(e){
    print(e.getErrorMessage());
  }
  print("Завершение программы");
}

class Person{
  String name;
  int age = 1;

  Person(this.name, age){
    if(age < 1 || age > 110) {
      throw AgeException();
    }
    else{
      this.age = age;
    }
  }
}
class AgeException  implements Exception{
  String getErrorMessage() {
    return "Недопустимый возраст";
  }
}