// @dart=2.9
import 'dart:math';

main() {
  int amountCards = 20;
  int amountNumbersInCard = 5;
  int amountNumbersInTotal = amountCards * amountNumbersInCard;
  int rangeMax = 100;

  var cards = List<Card>(amountCards);
  // List<int> totalSet = [5,7,6,17,8,    19,15,18,3,4,    14,11,10,0,12,     13,1,2,16,9];
  // List<int> totalSet = [0,1,2,3,4,     5,6,7,8,9,     10,11,12,13,14,     15,16,17,18,19];
  List<int> totalSet = generateLineOfNumbers(amountNumbersInTotal, rangeMax);
  // print(totalSet);

  // set own set
  for (int i = 0; i < amountNumbersInTotal; i++) {
    int numCard = i ~/ amountNumbersInCard; // 0..3 (iter card)
    cards[numCard] = Card(amountNumbersInCard);
    int tab = numCard * amountNumbersInCard;
    cards[numCard].ownSetOfNumbers =
        totalSet.sublist(0+tab, (amountNumbersInCard)+tab);
  }

  // set pairs
  int previousTab = -1;
  int newTab = -1;
  Random r = Random();
  for (int i = 0; i < amountNumbersInCard-1; i++) { // four pair  0..4
    while (true) {
      newTab = r.nextInt(amountCards - 1) + 1; // 1..3
      if (newTab != previousTab) {
        previousTab = newTab;
        break;
      }
    }

    for (int j = 0; j < cards.length; j++) {
      var card = cards[j];
      int firstIndex = (i+(newTab+j)*amountNumbersInCard)%amountNumbersInTotal;
      int secondIndex = (i+1+(newTab+j)*amountNumbersInCard)%amountNumbersInTotal;
      card.pairs[i] = Pair(totalSet[firstIndex], totalSet[secondIndex]);
    }
  }

  // printing
  for (var c in cards) {
    print(c.printTaskCard());
    print('');
  }

  for (var c in cards) {
    print(c.printAnswer());
  }


/*  for (var e in totalSet) {
    print('$e~/$amountNumbersInCard=${e ~/ amountNumbersInCard}');
  }*/
  print('');
/*  for (var e in totalSet) {
    print('$e%$amountNumbersInCard=${e % amountNumbersInCard}');
  }*/

/*  print('');
  var isTaken = List<bool>.generate(amountNumbersInTotal, (i) => false);
  print(isTaken);*/
}



class Card {
  List<int> ownSetOfNumbers;
  List<Pair> pairs;

  Card(int amountNumInCard) {
    ownSetOfNumbers = List<int>(amountNumInCard);
    pairs = List<Pair>(amountNumInCard - 1);
  }

  String printTaskCard(){
    String outPairs ='';
    // pairs.sort((a, b) => a.f.compareTo(b.f));
    pairs.sort((a, b) => a.s.compareTo(b.s));
    // pairs.sort((a, b) => a.s.compareTo(b.s));
    for(var p in pairs) {
      outPairs += '$p;   ';
    }

    String outOwnSet ='';

    for(int i = 0; i<ownSetOfNumbers.length; i++){
      int n = ownSetOfNumbers[i];
      if(i==0){
        outOwnSet += '${n.toString()} ';
      } else {
        outOwnSet += ' ___  ';
      }
    }
    return'$outPairs \n $outOwnSet';
  }

  String printAnswer(){
    String out ='';
    for (var s in ownSetOfNumbers) {
      out+= '$s ';
    }
    return out;
  }
}

class Pair {
  int f;
  int s;
  Pair(this.f, this.s);

  @override
  String toString() {
    return '$f→$s';
  }
}



List<int> generateLineOfNumbers(int amountOfNumbersInTotal, int rangeMax) {
  assert(rangeMax >= amountOfNumbersInTotal);
  Random r = Random();
  var list = List<int>(amountOfNumbersInTotal);
  for (int i = 0; i < list.length; i++) {
    while (true) {
      var newNum = r.nextInt(rangeMax);
      if (!list.contains(newNum)) {
        list[i] = newNum;
        break;
      }
    }
  }
  return list;
}
