Future getMessage(int i) {
  // для эмуляции длительной операции делаем задержку в 3 секунды
  return Future.delayed(Duration(seconds: i),
      () => print("Пришло новое сообщение от Тома after $i second"));
}

void main() {
  test1();
  // test2();
  // test3(); //chain 'then'
  // test4(); // catchError  with  (second parameters - condition)
  // test5(); //whenComplete
  // test6(); //  async и await
}

void test6() {}

void test5() {
  Future(() {
    print("Выполняется Future"); //2
    // return "Hello Dart";
    throw 404;
  }).then((value) {
    print("Из Future получено значение: $value");
  }).catchError((err) {
    print("Ошибка: $err");  //3
  }).whenComplete(() {
    print("Future завершил свою работу");  //4
  });

  print("Ждем получения значения из Future"); //1
}

void test4() {
  Future(() {
    print("Выполняется Future");
    throw 404;
  }).then((value) {
    print("Из Future получено значение: $value");
  }).catchError((err) {
    print("Код ошибки: $err");
  }, test: (err) {
    return err is int;
  });

  print("Ждем получения значения из Future");
}

void test3() {
  Future<String> future = Future(() {
    print("2 Выполняется Future"); // 2
    return "Hello Future"; // возвращаем строку
  });

  future.then((value) {
    print("3 Из Future получено значение: $value"); // 3
    return 22;
  }).then((value) {
    print("4 Выполнение Future завершено. Получено: $value"); //4
    return 32;
  }).then((value) => print('5 finish $value')); //5

  print("1 Main ends"); // 1
}

void test2() {
  Future<String> future = Future(() {
    print("Выполнение Future"); // 2*
    return "Hello Future"; // возвращаем строку     //3*
  });

  future.then((value) {
    print("Из Future получено значение: $value"); // 3*
  });

  print("Main ends"); // 1*
}

void test1() {
  getMessage(1); // 4
  Future myFuture = Future(() {
    print("Hello Future"); // 3
  });
  getMessage(2); // 5
  getMessage(3); // 6
  getMessage(4); // 7
  getMessage(5); // 8
  getMessage(6); // 9
  Future future = Future.value(35); // 2
  future.then((value) => print('value $value'));
  print("Проверка сообщений..."); // 1
}
