import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text('My App'),
            pinned: true,
            floating: true,
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  // Perform search action
                },
              ),
              IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {
                  // Open settings page
                },
              ),
            ],
          ),
          SliverFillRemaining(
            child: Container(
              // Your main content goes here
            ),
          ),
        ],
      ),
    );
  }
}
