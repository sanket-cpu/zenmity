import 'package:auselessthing/notes/math.dart';
import 'package:flutter/material.dart';

final _randlist = ["Study Material and Resources"];
var _text;

class MathState extends StatefulWidget {
  Math createState() => Math();
}

class CCPState extends StatefulWidget {
  CCP createState() => CCP();
}

class Math extends State<MathState> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Engineering Mathematics-II"),
      ),
      body: Center(
          child: Column(
        children: [
          for (_text in _randlist)
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MathNotes()));
                },
                child: Text(_text))
        ],
      )),
    );
  }
}

class CCP extends State<CCPState> {
  CCP();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Concepts in C Programming-II"),
      ),
      body: Center(
          child: Column(
        children: [
          for (_text in _randlist)
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CCPNotes()));
              },
              child: Text(_text),
            )
        ],
      )),
    );
  }
}
