import 'dart:convert';


abstract class A{
  printWord() => print("hi");
}

class B extends A{

}

void main (){
  B b = B();
  b.printWord();
}
