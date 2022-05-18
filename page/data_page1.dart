import 'package:flutter/material.dart';

import 'data_page2.dart';

class MyNavi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  static const id = "/home_id";

  _State createState() => _State();
}

class _State extends State<MyHomePage> {
  String data = "BottonOne";
  String data2 = "";

  Future openDiteils() async {
    Map res = await Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext) {
      return Second(name: 'Dart', age: '33');
    }));

    if (res != null && res.containsKey('name')) {
      setState(() {
        data = res['name'];
      });
    }
    if (res != null && res.containsKey('age')) {
      setState(() {
        data2 = res['age'];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
              color: Colors.red,
              onPressed: () {
                openDiteils();
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(data),
                  Text(data2),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}