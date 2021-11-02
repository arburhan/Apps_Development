import 'package:flutter/material.dart';

main() => runApp(MaterialApp(title: "Counter", home: Home()));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _count = 0;
  void _increment() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Click Counter")),
        // floatingbutton --start
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.teal,
          child: Icon(Icons.add),
          onPressed: () {
            _increment();
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,

        // floatingbutton --end

        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("$_count", style: TextStyle(fontSize: 30, color: Colors.redAccent)),
            ElevatedButton(
              onPressed: () => {
                _increment()
              },
              child: Icon(Icons.alarm, size: 50),
            ),
          ]),
        ));
  }
}
