import 'dart:io' show stdin, stdout;

void main(List<String> argumment) {
  stdout.write("Enter number : ");
  var num ;
  num = num ?? stdin.readLineSync();
  int num2 = int.parse(num);
  int fac = 1;
  int i;
  for(int i=num2; i > 1; i--)
  {
    fac = fac*i;
  }
  print('${num} is ${fac}');


}//3