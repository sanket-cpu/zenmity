import 'package:flutter/material.dart';

import 'notes/caednotes.dart';

final chemlist = [
  "CIP",
  "Engineering Mathematics-II",
  "Concepts in C Programming-II",
  "Engineering Mechanics",
  "Basic Electronics "
];
final _randlist = ["Study Material and other Resources"];

class ChemState extends StatefulWidget {
  Chem createState() => Chem();
}

class BEState extends StatefulWidget {
  BE createState() => BE();
}

class MEState extends StatefulWidget {
  ME createState() => ME();
}

class CAEDState extends StatefulWidget {
  CAED createState() => CAED();
}

class CIPState extends StatefulWidget {
  CIP createState() => CIP();
}

class Chem extends State<ChemState> {
  var text;
  Chem();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Engineering Chemistry"),
      ),
      body: Center(
          child: Column(
        children: [
          for (text in _randlist)
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ChemNotes()));
              },
              child: Text(text),
            )
        ],
      )),
    );
  }
}

class BE extends State<BEState> {
  var text;
  BE();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Basic Electronics"),
      ),
      body: Center(
          child: Column(
        children: [
          for (text in _randlist)
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BENotes()));
              },
              child: Text(text),
            )
        ],
      )),
    );
  }
}

class ME extends State<MEState> {
  var text;
  ME();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Engineering Mechanics"),
      ),
      body: Center(
          child: Column(
        children: [
          for (text in _randlist)
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EMNotes()));
              },
              child: Text(text),
            )
        ],
      )),
    );
  }
}

class CAED extends State<CAEDState> {
  var text;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("CAED"),
      ),
      body: Center(
          child: Column(
        children: [
          for (text in _randlist)
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CAEDNotes()));
              },
              child: Text(text),
            )
        ],
      )),
    );
  }
}

class CIP extends State<CIPState> {
  var text;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("CIP"),
      ),
      body: Center(
          child: Column(
        children: [
          for (text in _randlist)
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CIPNotes()));
              },
              child: Text(text),
            )
        ],
      )),
    );
  }
}
