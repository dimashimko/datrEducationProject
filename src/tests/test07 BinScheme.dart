void main(){
  for(int i = 0; i<32; i++) {
    print('${i.toString().padLeft(2,' ')} ${i.toRadixString(2).padLeft(5,'0')}');
  }
}

