main() {
  int height = 6;
  for (int i = 0; i < height; i++) {
    String newLine = '';

    newLine += ' ' * (height - i);
    newLine += '*' * i;
    newLine += '*';
    newLine += '*' * i;
    print(newLine);
  }
}
