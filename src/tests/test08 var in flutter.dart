main(){
  var a ='a';


  List files = List.generate(5, (index) => '$index');
  for (var file in files) {
    print(file);
  }
}

/*
void printLengths(List<File> files) {
  for (var file in files) {
    print(file.lengthSync());
  }
}*/
