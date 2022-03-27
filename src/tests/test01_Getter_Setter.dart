main() {
  var dima = Person(26);
  var victor = Person(30);
  var something = dima;

  dima.printAge(); // 26
  changeSomething(dima);
  dima.printAge(); // 10
  print(dima.getAge); // 10

  print('');

  int k = 77;
  print(k); // 77
  changeInt(k);
  print(k); // 77
}

class Person {
  int age;
  Person(this.age);
  int get getAge => age;               //getter
  set setAge(int val1) => age = val1;  // setter
  printAge() => print(age);
}

void changeInt(int i) {
  i = 20;
}

void changeSomething(Person person) {
  person.setAge = 10;                   //useSetter
}





/*class Person {
  String name;
  int birthYear;

  bool get isAdult => (DateTime.now().year - birthYear) > 18;

  int get age => (DateTime.now().year - birthYear);
  set age(int val) => birthYear = (DateTime.now().year - val);

  Person(this.name, this.birthYear);
}

void main() {
  Person personAdult = Person('adultUser', 1990);
  print('Hello ${personAdult.name}, you was born in ${personAdult.birthYear}, you are
    ${personAdult.isAdult ? 'adult' : 'not adult'}');

  Person personNotAdult = Person('adultUser', 2005);
  print('Hello ${personNotAdult.name}, you was born in ${personNotAdult.birthYear},
    you are ${personNotAdult.isAdult ? 'adult' : 'not adult'}');

  //check how setter work
  print(personAdult.birthYear);
  personAdult.age = 5;
  print(personAdult.birthYear);
}*/