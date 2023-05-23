import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final int counter = 42;

  @override
  Widget build(BuildContext context) {
    return CounterProvider(
      counter: counter,
      child: MaterialApp(
        title: 'InheritedWidget',
        home: HomeScreen(),
      ),
    );
  }
}

class CounterProvider extends InheritedWidget {
  final int counter;

  CounterProvider({required this.counter, required Widget child})
      : super(child: child);

  static CounterProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CounterProvider>();
  }

  @override
  bool updateShouldNotify(CounterProvider oldWidget) {
    return oldWidget.counter != counter;
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterProvider = CounterProvider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('InheritedWidget '),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Counter Value: ${counterProvider?.counter}',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(),
                  ),
                );
              },
              child: Text('Go to Detail Screen'),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterProvider = CounterProvider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Screen'),
      ),
      body: Center(
        child: Text(
          'Counter Value: ${counterProvider?.counter}',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
