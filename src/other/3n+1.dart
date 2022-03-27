main(){
  print('hi hi');
  for(int i =1; i<10; i++) {
    var list = List.filled(0, 0, growable: true);
    int c = 0;
    int n =i;
    while (n!=1){
      n = (n%2==1? 3*n+1 : n/2).toInt();
      list.add(n);
      c++;
    }
    print('i: $i  c: $c   ');
    print(list);
    print('');
  }
}