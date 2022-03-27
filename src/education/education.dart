void main1() {
  //itar
  // Ctrl + Shift + F   - поиск по файлам


  String name1 = "Tom";
  int numInt = 45;

  var name2 = "Tom";
  var num = 123;

  //"dynamic"  в отличие от var, dynamic позволяет изменять тип переменной
  dynamic nameDynamic = "Tom";
  nameDynamic = 78;

  const pi = 3.14;
  final e = 2.77;

  // **************************************
  // 2.3 Types variable
  // **************************************

  bool boo = true;
  int i = 10;
  double x = 8.8;
  //  print(25/16);  // 1.5625
  //  print(25~/16);  //  1



  /* String */
  String tom = "Tom";
  String a = "a";
  print(a.codeUnitAt(0)); //97
  print(tom[2]); // t
  // s.split('').where((c) => ..)

  /* multiline */
  var multiline = '''
        Многострочная
        строка
    ''';

  Runes input = new Runes('\u041F\u0440\u0438\u0432\u0435\u0442');
  Runes text = new Runes('Привет');
  print('text (Runes):${text}');
  print(String.fromCharCodes(input));
  print(String.fromCharCodes(text));

  Symbol s = #f;  // представляет символ f
  Symbol v = #v;

  // **************************************
  // 2.4 Арифметические операции
  // **************************************

  int d = 4 + 7;  // 11
  int f = 4 - 10;  // -6
  int g = 5 * 7;  // 35
  double h = 22.5 / 4.5;  // 5.0
  int j = 22 ~/ 4; // 5 (округляє до низу)
  int k = 22 % 4; // 2 (22 - 4*5 = 2)

  // **************************************
  // 2.5 Побитовые операции и операции сдвига
  // **************************************

  // & (логическое умножение)
  int a1 = 2;         //010
  int b1 = 5;         //101
  print(a1&b1);   //000 - результат 0

  // | (логическое сложение)
  print(a1 | b1);

  // ^ (логическое исключающее ИЛИ)
  print(882 ^ 123);

  // ~ (логическое отрицание)
  //  инвертирует все разряды числа: если значение разряда равно 1, то оно становится равным нулю, и наоборот.
  print(~12);

  // Операции сдвига
  print(21>>3);





  // **************************************
  // **************************************
  // 5.0 Коллекции
  // **************************************
  // **************************************

  // **************************************
  // 5.3 Map
  // **************************************
  var myMap = <String, int>{};
  var countMap = <String, int>{};
  final countMap2 = <String, int>{};
  Map<String, int> letterMap = {};



  // OTHER


  // **************************************
  // **************************************
  // 3.0
  // **************************************
  // **************************************

  
  
  void showPerson0(name, age){
    print("Name: $name");
    print("Age: $age \n");
  }

  void showPerson1({required String name, required int age}){
    print("Name: $name");
    print("Age: $age \n");
  }

  void showPerson2(String name, [int? age]){ // не обовязкові параметри []
    print("Name: $name");
    print("Age: $age \n");
  }

  void showPerson3({required String name, required int age}){ // не обовязкові параметри []
    print("Name: $name");
    print("Age: $age \n");
  }
  
  showPerson3(age: 25, name: "im");
  // showPerson1(name: "name", 55);
}

main(){
  int x = 0, o = 0;   // обявлення змінних чере кому
  print(++x);
  print(++x);
}



// List<int> lsm = ls..sort();





