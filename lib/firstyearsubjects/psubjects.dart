import 'package:flutter/material.dart';
import '../firstyearnotes/caednotes.dart';

final randlist = ["Study Material and other Resources"];

class PhyState extends StatefulWidget {
  Phy createState() => Phy();
}

class EVSState extends StatefulWidget {
  @override
  EVS createState() => EVS();
}

class BEEState extends StatefulWidget {
  @override
  BEE createState() => BEE();
}

class EMEState extends StatefulWidget {
  @override
  EME createState() => EME();
}

class EngState extends StatefulWidget {
  @override
  Eng createState() => Eng();
}

class Phy extends State<PhyState> {
  var text;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Engineering Physics"),
      ),
      body: Center(
          child: Column(
        children: [
          for (text in randlist)
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.blue, onPrimary: Colors.white),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PhyNotes()));
              },
              child: Text(text),
            )
        ],
      )),
    );
  }
}

class EVS extends State<EVSState> {
  var text;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Environmental Studies"),
      ),
      body: Center(
          child: Column(
        children: [
          for (text in randlist)
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.blue, onPrimary: Colors.white),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EVSNotes()));
              },
              child: Text(text),
            )
        ],
      )),
    );
  }
}

class BEE extends State<BEEState> {
  var text;
  BEE();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Basic Electrical Engineering "),
      ),
      body: Center(
          child: Column(
        children: [
          for (text in randlist)
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.blue, onPrimary: Colors.white),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BEENotes()));
              },
              child: Text(text),
            )
        ],
      )),
    );
  }
}

class EME extends State<EMEState> {
  String text = '';
  EME();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Elements of Mechanical Engineering"),
      ),
      body: Center(
          child: Column(
        children: [
          for (text in randlist)
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.blue, onPrimary: Colors.white),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EMENotes()));
              },
              child: Text(text),
            )
        ],
      )),
    );
  }
}

class Eng extends State<EngState> {
  var text;
  Eng();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("English"),
      ),
      body: Center(
          child: Column(
        children: [
          for (text in randlist)
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.blue, onPrimary: Colors.white),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EngNotes()));
              },
              child: Text(text),
            )
        ],
      )),
    );
  }
}
