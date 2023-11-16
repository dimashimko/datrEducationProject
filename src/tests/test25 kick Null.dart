main(){
  int? e;
  e = e?? 5;
  print(e);

  String? s = 'ww';
  s = null;
  if(s!=null){
    s = s+'*';
  }
  print(s);
}