main() {
  test([],0);
  test([':)', ';(', ';}', ':-D'],2);
  test([';]', ':[', ';*', ':\$', ';-D'],1);
  test([':)',':(',':D',':O',':;'],2);
  test([':-)',';~D',':-D',':_D'],3);
  test([':---)','))',';~~D',';D'],1);
  test([';~)',':)',':-)',':--)'],3);
  test([':o)',':--D',';-~)'],0);
}

void test(List<String> arr, int answer) {
  int result = countSmileys(arr);
  bool correct = result == answer;
  print(' $correct ${correct ? '☑ Test Passed' : '$result is no $answer'}');
}


/* my solution */
int countSmileys1(List<String> arr) => arr.where((e) => RegExp('([:;][-~][)D]|[:;][)D])').allMatches(e).length == 1).length;

/*  The clever code of other programmers */
int countSmileys(List<String> arr) =>
    RegExp(r"[:;](-?|~?)[)D]").allMatches((arr.join(''))).length;

/*  The clever code of other programmers */
int countSmileys3(List<String> arr) {
  RegExp rgx = new RegExp("[:;]{1}[~-]?[)D]{1}");
  return rgx.allMatches(arr.join(" ")).length;
}


//task
/*Given an array (arr) as an argument complete the function countSmileys that should return the total number of smiling faces.

Rules for a smiling face:

Each smiley face must contain a valid pair of eyes. Eyes can be marked as               : or ;
A smiley face can have a nose but it does not have to. Valid characters for a nose are  - or ~
Every smiling face must have a smiling mouth that should be marked with either          ) or D
No additional characters are allowed except for those mentioned.

Valid smiley face examples: :) :D ;-D :~)
Invalid smiley faces: ;( :> :} :]

Example
countSmileys([':)', ';(', ';}', ':-D']);       // should return 2;
countSmileys([';D', ':-(', ':-)', ';~)']);     // should return 3;
countSmileys([';]', ':[', ';*', ':$', ';-D']); // should return 1;
Note
In case of an empty array return 0. You will not be tested with invalid input (input will always be an array). Order of the face (eyes, nose, mouth) elements will always be the same.*/