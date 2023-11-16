import 'dart:math';

main() {
  final int initGameNumber = 1;
  final int pairs = 100;
  final int participant = 2;
  final int amountGame = 16;

  List<Game> games = [];
  for(int i = 0; i<amountGame; i++){
    games.add(createGame(pairs, participant));
  }
  int counter = initGameNumber;
  for (var game in games) {
    String numberGame = counter.toString().padLeft(3, '0');
    print('${numberGame}: \n ${game.answer}');
    counter++;
  }
  print('');
  counter = initGameNumber;
  for (var game in games) {
    String numberGame = counter.toString().padLeft(3, '0');
    for(int i = 0; i<game.papers.length; i++){
      print('${numberGame} List ${String.fromCharCode(i+65)} : \n${game.papers[i]}');
    }
    counter++;
  }
  print('');

}

Game createGame(int pairs, int participant){
  Game newGame = Game([],[]);

  final int amount = pairs+1;

  List<int> listNumbers = List.generate(amount, (i) => i + 1);
  List<int> newList = [];

  // take random
  newList.add(listNumbers.removeAt(0));
  for (int i = 1; i < amount; i++) {
    newList.add(listNumbers.removeAt(Random().nextInt(listNumbers.length)));
  }
  newGame.answer = newList;

  // split to pair
  List<Pair> listOfPairs = [];
  for (int j = 1; j < newList.length; j++) {
    listOfPairs.add(
      Pair(newList[j - 1], newList[j]),
    );
  }

  // split to paperOfParticipants
  List<List<Pair>> paperOfParticipants = List.generate(participant, (index) => []);
  for (int k = 0; k < listOfPairs.length; k++) {
    paperOfParticipants[k%participant].add(listOfPairs[k]);
  }

  // mix
  for (var paper in paperOfParticipants) {
    paper.shuffle();
  }
  List<String> papers = [];
  for (var paper in paperOfParticipants) {
    papers.add(paper.join('  '));
  };
  newGame.papers = papers;

  return newGame;
}

class Game{
  Game(this.answer, this.papers);
  List<int> answer;
  List<String> papers;
}


class Pair {
  Pair(this.a, this.b);

  int a;
  int b;

  @override
  String toString() {
    return ' $a→$b ';
  }
}
