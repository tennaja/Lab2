import 'dart:ffi';
import 'dart:io' show stdin,stdout;

void main (List<String> arguments){

List<dynamic> nums = [];
  for(int i=0; i<10; i++){
    stdout.write('Enter number :', );
    int t = int.parse(stdin.readLineSync()!);
    nums.add(t);
    }
    for(int j=9; j>=0; j--){
      print('${[j]},${nums[j]}');
    }
  
  
 
  
}