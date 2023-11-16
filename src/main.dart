import 'dart:io';

void main() {
  // print('Enter height:');
  // int height = int.parse(stdin.readLineSync() ?? '0');
  int height = 7;
  int width = height * 2 - 1;
  int half = width ~/ 2;
  // print('height: $height');
  // print('width: $width');
  // print('half: $half');
  for (int i = 0; i < height; i++) {
    String newLine = '';
    newLine += List.generate(height - i, (index) => ' ').join('');
    newLine += List.generate(i * 2 + 1, (index) => '*').join('');

    print(newLine);
  }
}
