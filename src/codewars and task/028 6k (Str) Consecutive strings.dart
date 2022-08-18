main() {
  testing(["zone", "abigail", "theta", "form", "libe", "zas"], 2, "abigailtheta");
  testing(["ejjjjmmtthh", "zxxuueeg", "aanlljrrrxx", "dqqqaaabbb", "oocccffuucccjjjkkkjyyyeehh"], 1, "oocccffuucccjjjkkkjyyyeehh");
  testing([], 3, "");
  testing(["itvayloxrp","wkppqsztdkmvcuwvereiupccauycnjutlv","vweqilsfytihvrzlaodfixoyxvyuyvgpck"], 2, "wkppqsztdkmvcuwvereiupccauycnjutlvvweqilsfytihvrzlaodfixoyxvyuyvgpck");
  testing(["wlwsasphmxx","owiaxujylentrklctozmymu","wpgozvxxiu"], 2, "wlwsasphmxxowiaxujylentrklctozmymu");
  testing(["zone", "abigail", "theta", "form", "libe", "zas"], -2, "");
  testing(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 3, "ixoyx3452zzzzzzzzzzzz");
  testing(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 15, "");
  testing(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 0, "");
}

void testing(List<String> mass, int k, String answer) {
  String result = longestConsec(mass, k);
  bool correct = result == answer;
  print(
      ' $correct ${correct ? '☑ Test Passed' : ' $result  is no $answer'}');
}

/* my solution */
String longestConsec1(List<dynamic> mass, int k) {
  if(k<1 || k>mass.length) return '';
  String result = '';
  for (int i = 0; i < mass.length-k+1; i++) {
    String newStr = mass.sublist(i, i+k).join('');
    if(newStr.length > result.length) result = newStr;
  }
  return result;
}


/*  The clever solution of other programmers */
String longestConsec2(strarr, k) {
  if (k <= 0) return '';
  String maxstr = '';
  for (int i = 0; i <= strarr.length - k; i++) {
    String s = strarr.sublist(i, i + k).join('');
    maxstr = s.length > maxstr.length ? s : maxstr;
  }
  return maxstr;
}

/*  The clever solution of other programmers */
String longestConsec(List strarr, int k) {
  if(strarr.isEmpty || k> strarr.length || k<=0) return "";


  return List.generate(
      strarr.length,
          (index)=> index+k > strarr.length?"":strarr.sublist(index, index+k)
          .join())
      .reversed
      .toList()
      .fold("",
          ( a, b)=> a.length > b.length? a:b);


}
