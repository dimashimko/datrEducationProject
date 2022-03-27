main() {
  print(nbYear(1500, 5, 100, 5000)); // 15
  print(nbYear(1500000, 0.0, 10000, 2000000)); // 50
}

int nbYear(int p0, double percent, int aug, int p) {
  percent /= 100;
  int years = 0;

  while (p0 < p) {
    p0 = p0 + (p0 * percent).toInt() + aug;
    years++;
  }
  return years;
}
