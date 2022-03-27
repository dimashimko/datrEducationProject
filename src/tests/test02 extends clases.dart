void main() {
  Employee bob = Employee();
  bob.name = "Bob";

  var b = 1;
  var v = "gdf";

  bob.display(b);
  bob.display(v);
  bob.display(bob.name);
}

class Person {
  String name = '';

  void display(dynamic a) {
    print(a);
  }
}

class Employee extends Person {}
