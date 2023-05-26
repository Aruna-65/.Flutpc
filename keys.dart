import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  List<String> items = ['Apple', 'Banana', 'Orange'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Key Example'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          // Using a ValueKey to uniquely identify the item widget based on its value
          return ListTile(
            key: ValueKey(item),
            title: Text(item),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Simulating a change in the list by swapping the first and second items
          setState(() {
            final temp = items[0];
            items[0] = items[1];
            items[1] = temp;
          });
        },
        child: Icon(Icons.swap_horiz),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MyWidget(),
  ));
}
