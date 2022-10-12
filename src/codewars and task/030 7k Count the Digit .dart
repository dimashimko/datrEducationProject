main(){
  print(nbDig(10, 1));
}

/* my solution */
int nbDig(int n, int d) {
  List<int> list = [];
  for(int i = 0; i<=n; i++){
    list.add(i*i);
  }
  return '$d'.allMatches(list.join()).length;
}

/*  The clever solution of other programmers */
int nbDig2(int n, int d) =>
    '$d'.allMatches([for (var i = 0; i <= n; i += 1) i * i].join()).length;