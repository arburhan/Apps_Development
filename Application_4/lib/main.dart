import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Axis",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Cross Axis Alignment"),
        ),
        body: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      // crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Image.network('https://images.unsplash.com/photo-1529778873920-4da4926a72c2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=436&q=80', height: 200),
        Image.network('https://en.meming.world/images/en/6/68/Tom_Cat_Reading_a_Newspaper.jpg', height: 150, width: 200),
        Image.network('https://i.pinimg.com/564x/53/07/09/530709f59cc20b8629fde9037b28a751.jpg', height: 100, width: 150),
        Text("AR Tom",
            style: TextStyle(
              fontSize: 30,
              color: Colors.red,
            )),
      ],
    );
  }
}
