// /*
// https://metanit.com/dart/tutorial/4.5.php
//
// * Наследование классов vs реализация интерфейсов
//
// При наследовании производный класс не обязан определять те же поля и методы,
//  которые есть в базовом классе (за исключением абстрактных методов).
//  Если базовом классе определяется конструктор, то производный класс обязан определить свой конструктор,
//  при котором вызывается конструктор базового класса.
//  В производном классе мы можем обращаться к реализации базового класса с помощью ключевого слова super.
//  Не поддерживается множественное наследование.
//
// При реализации интерфейса производный класс должен определить все поля и методы, которые определены в классе интерфейса.
// *  Если в базовом есть конструктор, то производный класс НЕ обязан определять свой конструктор.
// * В производном классе мы НЕ можем обращаться к методам реализованного интерфейса с помощью ключевого слова super.
// * Поддерживается множественная реализация интерфейсов.
// * */
//
void main() {
  Employee bob = Employee("Bob", "Google");
  bob.display(); // Employee name: Bob
  bob.work(); // Employee works in Google
  bob.sayImMan();
  bob.sayMyAgeIs();
}

class Person {
  String name;

  Person(this.name);

  void display() {
    print("Name: $name");
  }
}

class Worker {
  String company = "";

  void work() {
    print("Work in $company");
  }
}

class Man {
  int age;

  Man(this.age, {String? father});

  void sayImMan(){
    print('Im a man');
  }

  void sayMyAgeIs(){
    print('My Age Is: $age');
  }
}

class Employee extends Man implements Person, Worker {
  String name; // реализация поля name из Person
  String company; // реализация поля company из Worker
  // реализация метода display Person
  void display() {
    print("Employee name: $name");
  }

  // реализация метода work из Worker
  void work() {
    print("Employee works in $company");
  }

  Employee(this.name, this.company) : super(5, father: 'John');
}
