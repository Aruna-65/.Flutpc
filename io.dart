import'dart:io';
void main() {
  /*var name;
  int age;
  print('Enter the name:');
  print('Enter the age:');
  name=stdin.readLineSync();
  age=int.parse(stdin.readLineSync()!);
  print(name.runtimeType);
  print(age.runtimeType);
  stdout.write ('name : $name |Age:$age');
}*/



  int number1;
  print('number1:');
  number1=int.parse(stdin.readLineSync()!);
  int number2;
  print('number2:');
  number2=int.parse(stdin.readLineSync()!);
  print(number1*number2);
}
