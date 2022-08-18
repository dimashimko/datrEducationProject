import 'dart:math';

main() {
  testing(15, [0.0, 0.19, 0.5, 0.75, 1.0, 1.25, 1.5, 1.75, 2.0, 2.25], 74);
  testing(20, [0.0, 0.23, 0.46, 0.69, 0.92, 1.15, 1.38, 1.61], 41);
  testing(12, [0.0, 0.11, 0.22, 0.33, 0.44, 0.65, 1.08, 1.26, 1.68, 1.89, 2.1, 2.31, 2.52, 3.25], 219);
  testing(20, [0.0, 0.18, 0.36, 0.54, 0.72, 1.05, 1.26, 1.47, 1.92, 2.16, 2.4, 2.64, 2.88, 3.12, 3.36, 3.6, 3.84], 80);
  testing(19, [], 0);
  testing(19, [0.0], 0);
}

void testing(int s, List<double> x, int answer) {
  int result = gps(s, x);
  bool correct = result == answer;
  print(
      ' $correct ${correct ? '☑ Test Passed' : 'in $x => $result  is no $answer'}');
}

/* my solution */
int gps(int s, List<double> x) {
  if(x.length<2) return 0;
  List<double> speedList = [];
  for (int i = 1; i < x.length; i++) {
    speedList.add((x[i]-x[i-1])*3600/s);
  }
  // print(speedList);
  speedList.sort();
  return speedList.last.toInt();
}

/*  The clever solution of other programmers */
int gps2(int s, List<double> x) {
  var maxSpeed = 0;
  for (int i = 1; i <= x.length - 1; i++) {
    maxSpeed = max(maxSpeed, (3600 * (x[i] - (x[i - 1])) / s)).toInt();
  }
  return maxSpeed;
}


/*  The clever solution of other programmers */
int gps3(int s, List<double> x) {
  // your code
  if (x.length < 2) return 0;

  List<double> speeeeeeeeeed = [];
  for (int i = 0; i < (x.length - 1); i++){
    var temp = (3600 * (x[i+1] - x[i]) / s);
    speeeeeeeeeed.add(temp);
  }
  speeeeeeeeeed.sort();
  return speeeeeeeeeed[speeeeeeeeeed.length - 1].toInt();
}