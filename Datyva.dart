import 'package:test/expect.dart';

void main(){
  print("Datatypes and variables");
  /*
  var heart_symbol = '\u2665';                   // Runes Datatype
  var laugh_symbol = '\u{1f600}';
  print(heart_symbol);
  print(laugh_symbol);
}
*/
  int a=10;
  int b=10;
  print(a.runtimeType);
  print('the value of a is ${a}');
  var c=(a+b);
  final name='Aruna';
//  var name='roger'; //If we declare with final name we cannot ..,
  print(name.indexOf('n'));
  print(name.substring(0,3));
  print(name.toUpperCase());
  print(name.length);
  print(name.contains('po'));
  print(c);
  print(name.split(''));
  print(name[3]);
  print(name.contains('ui'));
}
///
/// void main(){
//   var name1='aru';
//   var name2='na';
//   print('the value of name1: ${name1} the value of name2: ${name2}');
//   var c=name1+name2;
//   print(c);
// }