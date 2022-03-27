void main (){

  // Employee bob = Employee("Bob", 55);
  Employee bob = Employee._();
  Employee john = Employee._();
  print("Retirenment age: ${Employee.retirenmentAge}");
  // bob.age = 50;
  // john.age = 55;
  bob.checkAge();
  john.checkAge();
}
class Employee{

  String name = '';
  int age = 18;
  static const int retirenmentAge = 65;

  Employee._();
  static final Employee em = Employee._();


  // Employee(this.name, this.age);

  checkAge(){
    if(age >= retirenmentAge){
      print("Пора на пенсию");
    }
    else{
      print("До пенсии еще ${retirenmentAge - age} лет");
    }
  }
}