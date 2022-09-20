enum Operation{

  add,
  subtract,
  multiply
}
void main (){

  // Тип операции задаем с помощью константы Operation.add, которая равна 1
  runOperation(10, 5, Operation.add);

  // Тип операции задаем с помощью константы Operation.multiply, которая равна 3
  runOperation(11, 5, Operation.multiply);
}

void runOperation(int x, int y, Operation op)
{
  int result = 0;

  switch (op){
    case Operation.add:
      result = x + y;
      break;
    case Operation.subtract:
      result = x - y;
      break;
    case Operation.multiply:
      result = x * y;
      break;
  }

  print("Результат операции равен $result");
}