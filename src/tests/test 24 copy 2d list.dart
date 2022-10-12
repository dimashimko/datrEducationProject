main(){
  List<List<String>> l = List.generate(3, (i) => List.generate(3, (j) => "█"));
  List<List<String>> k = l.map((e) => [...e]).toList();
  // l.forEach((e) {k.add([...e]);});

  l[1][1]= "7";
  // print(l);
  // print(k);


  // 2
  List<List<double>>? I = List.generate(
      3, (i) => List.generate(2, (j) => 0.0, growable: false),
      growable: false);
  List<List<double>>? N = List.generate(
      3, (i) => List.generate(2, (j) => 2.0, growable: false), growable: false);

  N = I.map((e) => [...e]).toList();
  List<List<double>> copy = [for (var sublist in I) [...sublist]];

  I[1][1] = 9.0;
  N[1][1] = 7.0;

  print(I);
  print(N);
  print(copy);
}