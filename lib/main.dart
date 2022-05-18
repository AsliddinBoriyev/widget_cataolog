import 'package:flutter/material.dart';

void main() {
  runApp(MyHome());
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp(),
      routes: {
        Pages.id: (context) => Pages(),
        Second.id: (context) => Second(age: '22',name: 'men',),
        MyApp.id: (context) => MyApp(),
        MyHomePage.id: (context) => MyHomePage(),
      },
    );
  }
}

class MyApp extends StatefulWidget {
  _State createState() => _State();
  static const id = "asda";
}

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 260, left: 150),
            child: RaisedButton(
              color: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, Pages.id);
              },
              child: Text("TEXT"),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, left: 150),
            child: RaisedButton(
              color: Colors.green,
              onPressed: () {
                Navigator.pushNamed(context, MyHomePage.id);
              },
              child: Text("NAVIGATOR"),
            ),
          ),
        ],
      ),
    );
  }
}