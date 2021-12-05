import 'package:flutter/material.dart';
import 'app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tic Tac Toy",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Tic Tac Toy Game"),
        ),
        body: GameApp(),
      ),
    );
  }
}
