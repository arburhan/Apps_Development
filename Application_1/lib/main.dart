import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Column'),
        ),
        body: Column(
          children: [
            Text("Flutter "),
            Text("example of column children"),
            Text("Column"),
            Text("Created by AR Tom"),
            Image.network(
              'https://images.unsplash.com/photo-1526336024174-e58f5cdd8e13?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1374&q=80',
              height: 250,
              width: 300,
            ),
            Image.asset('media/tom.png', height: 250, width: 300),
          ],
        ),
      ),
    );
  }
}
