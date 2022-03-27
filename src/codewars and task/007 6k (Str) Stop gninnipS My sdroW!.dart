main(){
      doSpinWords("Welcome"); // , equals("emocleW"));
      doSpinWords("Hey fellow warriors"); //, equals("Hey wollef sroirraw"));
      doSpinWords("This is a test"); //, equals("This is a test"));
      doSpinWords("This is another test"); //, equals("This is rehtona test"));
      doSpinWords("You are almost to the last test"); //, equals("You are tsomla to the last test"));
      doSpinWords("Just kidding there is still one more"); //, equals("Just gniddik ereht is llits one more"));
      doSpinWords("Seriously this is the last one"); //, equals("ylsuoireS this is the last one"));
}

void doSpinWords(String str) {
  print(spinWords(str));
}

/* my solution */
String spinWords1(String str) {
  List<String> list = List.filled(0, '', growable: true);
  str.split(' ').forEach((element) {
    if(element.length > 4){
      list.add(element.split('').reversed.join(''));
    } else {
      list.add(element);
    }
  });
  return list.join(' ');
}

/* my solution 2 */
String spinWords(String str) {
  return str.split(' ').map((e) => e.length > 4 ? e.split('').reversed.join(): e).join(' ');
}

/*  The clever solution of other programmers */
String spinWords3(String str) => str.splitMapJoin(' ', onNonMatch: (n) => n.length < 5 ? n : n.split('').reversed.join(''));

