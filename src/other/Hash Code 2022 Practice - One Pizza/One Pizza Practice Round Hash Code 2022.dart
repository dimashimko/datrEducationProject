import 'dart:async';
import 'dart:io';
import 'dart:convert';

main() async{
  var pathA = "input_data/a_an_example.in.txt";
  var pathB = "input_data/b_basic.in.txt";
  var pathC = "input_data/c_coarse.in.txt";
  var pathD = "input_data/d_difficult.in.txt";
  var pathE = "input_data/e_elaborate.in.txt";

  await findTheBestPizza(pathA);
  await findTheBestPizza(pathB);
  await findTheBestPizza(pathC);
  await findTheBestPizza(pathD);
  await findTheBestPizza(pathE);
}

findTheBestPizza(String path) async {
  List<String> lines = await parseToLines(path);

  String nameOutFile = 'out_${path.split('.',)[0].split('/')[1].split('_')[0].toUpperCase()}.txt';
  print('nameOutFile: $nameOutFile');

  List<Client> clients = parseToClients(lines);
  print('numberOfClients: ${clients.length} ');

  Map<String, Demand> demand = findDemandIngredients(clients);
  List<Client> goodClients = selectGoodClients(clients, demand.keys.length);
  demand = findDemandIngredients(goodClients);
  // Map<String, Demand> demandOfGoodClients = findDemandIngredients(goodClients);

  print('clients:${clients.length} goodClients:${goodClients.length}');
  // print clients
  // pizzeria.clients.forEach((element) {print(element);});
  // print demand
  // demand.forEach((key, value) => print('$key $value '));

  List<String> resultPizza = choiceTheBestVersionPizza(clients, demand);
  int score = countPoints(clients, resultPizza);
  print('score: $score');
  print('');

  // writeToFile(resultPizza, nameOutFile);
}

List<Client> selectGoodClients(List<Client> clients, int quantityIngred) {
  List<Client> goodClients = List.empty(growable: true);
  clients.forEach((c) {
    int requirements = c.likeListClient.length + c.dislikeListClient.length;
    if ( requirements < quantityIngred / 20) goodClients.add(c);
    print('requirements: $requirements quantityIngred:$quantityIngred');
  });

  return goodClients;
}

List<String> choiceTheBestVersionPizza(List<Client> clients, Map<String, Demand> demand) {
  List<String> resultPizza = List.empty(growable: true);
  demand.forEach((key, value) {
    if(value.likeIngred>value.dislikeIngred) resultPizza.add(key);
  });


  // return demand.keys.toList();
  return resultPizza;
}

int countPoints(List<Client> clients, List<String> resultPizza) {
  int counter = 0;

  clients.forEach((client) {
    bool checkLike = true;
    bool checkDislike =true;

    client.likeListClient.forEach((ingredient) { if(!resultPizza.contains(ingredient)) checkLike = false; });
    client.dislikeListClient.forEach((ingredient) { if(resultPizza.contains(ingredient)) checkDislike = false; });
    if(checkLike && checkDislike) counter++;
  });
  return counter;
}



Future<List<String>> parseToLines(String path) async {
  var lines = new File(path)
      .openRead()
      .map(utf8.decode)
      .transform(new LineSplitter())
      .toList();

  return lines;
}

List<Client> parseToClients(List<String> lines) {
  int numberOfClients = 0;
  List<Client> clients = List.empty(growable: true);

  numberOfClients = int.parse(lines[0]);

  for (int i = 1; i <= numberOfClients; i++) {
    var tmp = Client();
    tmp.likeListClient = lines[i * 2 - 1].split(' ')..removeAt(0);
    tmp.dislikeListClient = lines[i * 2].split(' ')..removeAt(0);
    clients.add(tmp);
  }

  return clients;
}

Map<String, Demand> findDemandIngredients(List<Client> clients) {
  var map = Map<String, Demand>();
  for (var client in clients) {
    // like
    for (var ingredient in client.likeListClient) {
      if (map.containsKey(ingredient)) {
        map[ingredient]!.likeIngred++;
      } else
        map[ingredient] = Demand(1, 0);
    }
    // dislike
    for (var ingredient in client.dislikeListClient) {
      if (map.containsKey(ingredient)) {
        map[ingredient]!.dislikeIngred++;
      } else
        map[ingredient] = Demand(0, 1);
    }
  }
  return map;
}

void writeToFile(List<String> result, String fileName) async {
  File file = new File(fileName);
  // file.writeAsString(result.length.toString());
  file.writeAsString('${result.length.toString()} ${result.join(' ')}');

/*  List letters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k"];
  for (int i = 0; i < 10; i++) {
    await file.writeAsString("${letters[i]}", mode: FileMode.append);
  }*/
}


// ******************************************** Classes
/*class Pizzeria {
  int numberOfClients = 0;
  List<Client> clients = List.empty(growable: true);
}*/

class Client {
  List<String> likeListClient = List.empty(growable: true);
  List<String> dislikeListClient = List.empty(growable: true);

  @override
  String toString() {
    return 'likeList:${likeListClient.toList()}  dislikeList:${dislikeListClient.toList()}';
  }
}

class Demand {
  int likeIngred = 0;
  int dislikeIngred = 0;

  Demand(int l, int d) {
    likeIngred = l;
    dislikeIngred = d;
  }

  @override
  String toString() {
    return 'like:$likeIngred dislike:$dislikeIngred';
  }
}


