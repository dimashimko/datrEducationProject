
void main() {
  String  s = 'a';
  var shared = List.filled(3, s);
  shared[1]='b';
  print(shared); // [a, b, a]
  print(shared[0]);
  print(shared[1]);
  print(shared[2]);

  var persons = List.filled(3, Person());
  print(persons); // [0, 0, 0]
  persons[1].num = 10;
  print(persons); // [10, 10, 10]
  print(persons[0]);
  print(persons[1]);
  print(persons[2]);

  var persons2 = List.generate(3, (index)=> Person());
  persons2[1].num = 10;
  print(persons2); // [0, 10, 0]
  print(persons2[0]);
  print(persons2[1]);
  print(persons2[2]);

}

class Person{
  int num = 0;
  @override
  String toString() {
    return '$num';

  }
  // Person(){}
}
