import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
  home:Scaffold(
    appBar:AppBar(
      title: Text('my first app'),
      centerTitle: true,//title property
    ),
    body: Center(
      child: Text('Hello☺️!'),
    ),
    floatingActionButton:FloatingActionButton(onPressed: (){
    },
      child:Text('click'),
    ),
  ),
));



