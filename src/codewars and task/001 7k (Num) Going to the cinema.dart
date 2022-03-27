import 'dart:math';

main() {

  print(movie(500, 15, 0.9));
  print(movie(390138, 3, 0.35));
}

int movie(int card, int ticket, double perc) {
  double priceOfTicket = ticket.toDouble();
  double priceWithCard = card.toDouble();

  for (var i = 1; i > -1; i++) {
    priceOfTicket *= perc;
    priceWithCard += priceOfTicket;

    if (priceWithCard.ceil() < ticket * i) return i;
  }
  return -1;
}

/*
// with comment
int movie(int card, int ticket, double perc) {
  double priceOfTicket = ticket.toDouble();
  double priceWithCard = card.toDouble();

  for (var i = 1; i > -1; i++) {
    // print(i);
    priceOfTicket *= perc;
    priceWithCard += priceOfTicket;

    // print('priceWithCard: ${priceWithCard.ceil()}');
    // print('ticket * i: ${ticket * i}');
    if (priceWithCard.ceil() < ticket * i) {
      // print('answer: $i');

      return i;
    }
  }
  return -1;
}
*/

/*// don't use that ↓
int movie2 (int card, int ticket, double perc){
  print('');
  for (var i = 1; i > -1; i++) {
    double sumSys2 = card.toDouble();
    for (var j = 1; j <= i; j++) {
      sumSys2 += ticket*pow(perc, j);
    }
    print('$i  $sumSys2');

    if(sumSys2.ceil() < i*ticket) return i;
  }
  return -1;
}*/
