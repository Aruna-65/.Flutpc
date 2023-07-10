import 'package:flutter/material.dart';  
  
void main() => runApp(MyApp());  
  
class MyApp extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      home: Scaffold(  
        appBar: AppBar(  
            title: Text('Flutter Image Demo'),  
        ),  
        body: Center(  
          child: Column(  
            children: <Widget>[  
              Image.network(  
                  'https://images.app.goo.gl/sehD21bwxHhnHTYn7',  
                  height: 400,  
                  width: 250  
              ),  
              Text(  
                  'It is an image displays from the given url.',  
                  style: TextStyle(fontSize: 20.0),  
              )  
            ],  
          ),  
        ),  
      ),  
    );  
  }  
}  