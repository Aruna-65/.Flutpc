/*void main() {
  var a = 3;
  print(a);
  if (a >= 18) {
    print('you are eligible');
  }
  else
    {
      print('you are not');
  */

import 'dart:io';
void main() {
  var name, age;
  print('Enter your name:');
  name = stdin.readLineSync();
  
  print(name);
  print('Enter your age:');
  age = int.parse(stdin.readLineSync()!);
  print(age);
  if (age > 21)
  {
    print('you are welcome');
  }
  else
      {
    print('no');
  }
}