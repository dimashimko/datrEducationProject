// // http://lessmember.blogspot.com/2014/03/dart-oop.html
// // 4. Примеси (mixins).
// // Примеси - это обратная интерфейсам стратегия наследования. Вместо описания типа, сигнатур методов наследуется непосредственно функционал класса. Ключевое слово для "примешивания" - with. Примеси существуют в Ruby, Python, Scala, D, PHP.
// // Есть несколько условий (ограничений) для использования пимесей в Dart:
// //  - отсутствие объявленного конструктора,
// //  - наследование прямо от Object (для плагина IDEA пока актуально прописывать: extends Object ),
// //  - отсутствие обращений к контексту super.
//
// // класс с наследуемым функционалом
// abstract class Walker {
//   String name = '';
//   void walk(){ print ("$name walks");}
// }
//
// // класс, использующий функционал из Walker
// class Man  with Walker{
//   String name = 'man';
//   // Man(this.name);
//
// }
//
// // еще один класс, использующий Walker
// class Cat  with Walker{
//   String name = 'cat';
// }
//
// // использование классов
// void main(){
//   Man man = new Man();
//   Cat cat = new Cat();
//   man.walk();
//   cat.walk();
// }
//
//
// // abstract class A{} // интерфейс
// //
// // abstract class B{} // класс для примешивания
// //
// // abstract class C{} // родительский класс
// //
// // class D extends C with B implements A{} // дочерний класс