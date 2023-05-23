import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stateful Number Widget',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stateful Number Widget'),
        ),
        body: Center(
          child: NumberWidget(),
        ),
      ),
    );
  }
}

class NumberWidget extends StatefulWidget {
  @override
  _NumberWidgetState createState() => _NumberWidgetState();
}

class _NumberWidgetState extends State<NumberWidget> {
  int number = 0;

  void incrementNumber() {
    setState(() {
      number++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Number:',
          style: TextStyle(fontSize: 24),
        ),
        Text(
          '$number',
          style: TextStyle(fontSize: 48),
        ),
        SizedBox(height: 16),
        ElevatedButton(
          onPressed: incrementNumber,
          child: Text('Increment'),
        ),
      ],
    );
  }
}
