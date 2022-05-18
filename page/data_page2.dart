import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  static const id = "second_id";

  String name;
  String age;

  Second({required this.name, required this.age});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
              color: Colors.yellow,
              onPressed: () {
                Navigator.of(context).pop({'name': 'Data', 'age': 'Jonatim'});
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(widget.name),
                  Text(widget.age),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}