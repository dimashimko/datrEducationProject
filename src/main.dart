import 'dart:convert';

void main (){
  var ages = {"John":"26", "Krishna": 34, "Rahul":67, "Maichel": 33};
  String jsonstringmap = json.encode(ages);
  print(jsonstringmap);
//output: {"John":26,"Krishna":34,"Rahul":67,"Maichel":33}


  var map = { "Germany" : "Berlin"};
  map.addAll({"France" : "Paris", "Spain": "Madrid"});    // добавляем Map

  print(map.containsKey("Poland"));   // false
  print(map.containsKey("France"));   // true

  print(map.containsValue("Madrid")); // true

  // удаляем элемент с ключом "Spain"
  map.remove("Spain");
  print(map.containsKey("Spain"));    // false
  print(map.containsValue("Madrid")); // false

  print(map["Germany"]);
}