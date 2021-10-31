import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile',
      home: Scaffold(
        // pixels problem :
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('Flutter Profile'),
        ),
        body: Profile(),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey,
        width: 300,
        // height: 350,
        // margin: EdgeInsets.all(30),
        // margin: EdgeInsets.only(rignt: 30, left: 20),
        // margin: EdgeInsets.fromLTRB(10, 20, 30, 40),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                "Profile",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              Image.network(
                "https://cdn.pixabay.com/photo/2020/05/11/15/38/tom-5158824_960_720.png",
                height: 277,

                // width: 250,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Name: "),
                  Text(" Md Burhan Uddin"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Age: "),
                  Text(" 21 years old"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Institute: "),
                  Text(" Rajshahi Polytechnic Institute"),
                ],
              ),
              Container(
                color: Colors.blue,
                padding: EdgeInsets.all(10),
                child: Text("Padding Test"),
              )
            ],
          ),
        ));
  }
}
