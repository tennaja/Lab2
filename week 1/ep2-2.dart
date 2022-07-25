import 'dart:io' show stdin, stdout;


void main(List<String> args) {
  stdout.write('enter score :');
  var num;
  num = num ?? stdin.readLineSync();
  int num2 = int.parse(num);
  if (num2 <= 100 && num2 >= 0) {
    if (num2 >= 80) {
      print('Your grade is A');
    } else if (num2 >= 70) {
      print('Your grade is B');
    } else if (num2 >= 60) {
      print('Your grade is C');
    } else if (num2 >= 50) {
      print('Your grade is D');
    } else {
      print('Your grade is f');
    }//12312313123
    ;
  } else {
    print('please input an integer between 0-100 !!!');
  }
  ;
}//2