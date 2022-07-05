import 'dart:io' show stdin, stdout;

void main() {
  stdout.write("Enter num : ");
  var num;
  num = num ?? stdin.readLineSync();
  int num2 = int.parse(num);
  if (num2 % 2 == 0) {
    print('Number ${num} is EVEN');
  } else {
    print('Number ${num} is ODD');
  }
} //1
