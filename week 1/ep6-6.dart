import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  stdout.write('Enter You Numer : ');
  var radius, A;
  radius = radius ?? stdin.readLineSync();
  var radius2 = int.parse(radius);
  A = 3.14 * pow(radius2, 2);
  print(A);
  
}