import 'dart:io' show stdin,stdout; 

void main() {
  int n;
  for (n=1 ; n<=100; n++){
    if(n%2 == 0){
      print("$n");
    }
  }
}