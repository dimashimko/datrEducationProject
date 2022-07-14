// https://www.youtube.com/watch?v=ZbwWhUsVkOo

void doWork() {
  print("Начало функции doWork");  // 1
  Future<String> messageFuture = getMessage();
  messageFuture.then((message){
    print("Получено сообщение: $message");  // 5
  });
  print("Завершение функции doWork");  // 3
}

Future<String> getMessage() {
  // имитация долгой работы с помощью задержки в 3 секунды
  print("Выполнение функции getMessage");  // 2

  return Future.delayed(Duration(seconds: 3), () => "Hello Dart");
}

void main () {
  doWork();
  print("Выполнение функции main");  // 4
}