/*Future<void> doWork() async {
  print("Начало функции doWork");  // 1
  try{
    String message = await getMessage();
    print("Получено сообщение: $message");
  }
  catch(e){
    print("Произошла ошибка: $e");  // 3
  }
  print("Завершение функции doWork");  // 4
}

Future<String> getMessage() {
  // с помощью оператора throw имитируем возникновение ошибки
  return Future.delayed(Duration(seconds: 3), () => throw "Сервер не отвечает");
}

void main () {
  doWork();
  print("Выполнение функции main");  // 2
}*/





Future<void> doWork() async {
  print("Начало функции doWork");  // 1
  String message = await getMessage();
  print("Получено сообщение: $message");  // 3
  print("Завершение функции doWork");  // 4
}

Future<String> getMessage() {
  // имитация долгой работы с помощью задержки в 3 секунды
  return Future.delayed(Duration(seconds: 3), () => "Hello Dart");
}

void main () {
  doWork();
  print("Выполнение функции main");  // 2
}






