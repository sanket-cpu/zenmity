import 'psubjects.dart';
import 'package:flutter/material.dart';
import 'csubjects.dart';
import 'commonsub.dart';

var sub;
final phylist = [
  "Engineering Physics",
  "Engineering Mathematics-II",
  "Elements of Mechanical Engineering",
  "Basic Electrical Engineering ",
  "Concepts in C Programming-II",
  "Environmental Studies",
  "English"
];
final chemlist = [
  "Engineering Chemistry",
  "Engineering Mathematics-II",
  "Engineering Mechanics",
  "Basic Electronics",
  "Concepts in C Programming-II",
  "CIP",
  'CAED'
];

class PhyCycle extends StatefulWidget {
  @override
  JustARandomThing createState() => JustARandomThing();
}

class JustARandomThing extends State<PhyCycle> {
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        for (sub in phylist)
          if (sub == 'Engineering Physics')
            SizedBox(
                width: 350,
                child: ElevatedButton(
                  child: Text('Engineering Physics'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PhyState()));
                  },
                ))
          else if (sub == "Engineering Mathematics-II")
            SizedBox(
                width: 350,
                child: ElevatedButton(
                  child: Text("Engineering Mathematics-II"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MathState()));
                  },
                ))
          else if (sub == "Concepts in C Programming-II")
            SizedBox(
                width: 350,
                child: ElevatedButton(
                  child: Text("Concepts in C Programming-II"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CCPState()));
                  },
                ))
          else if (sub == "Elements of Mechanical Engineering")
            SizedBox(
                width: 350,
                child: ElevatedButton(
                  child: Text("Elements of Mechanical Engineering"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => EMEState()));
                  },
                ))
          else if (sub == "Basic Electrical Engineering ")
            SizedBox(
                width: 350,
                child: ElevatedButton(
                    child: Text("Basic Electrical Engineering "),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BEEState()));
                    }))
          else if (sub == 'Environmental Studies')
            SizedBox(
                width: 350,
                child: ElevatedButton(
                  child: Text('Environmental Studies'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => EVSState()));
                  },
                ))
          else if (sub == "English")
            SizedBox(
                width: 350,
                child: ElevatedButton(
                    child: Text("English"),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => EngState()));
                    }))
      ],
    ));
  }
}

class ChemCycle extends StatefulWidget {
  @override
  ChemSub createState() => ChemSub();
}

class ChemSub extends State<ChemCycle> {
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        for (sub in chemlist)
          if (sub == 'Engineering Chemistry')
            SizedBox(
                width: 350,
                child: ElevatedButton(
                  child: Text('Engineering Chemistry'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ChemState()));
                  },
                ))
          else if (sub == "Engineering Mathematics-II")
            SizedBox(
                width: 350,
                child: ElevatedButton(
                  child: Text("Engineering Mathematics-II"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MathState()));
                  },
                ))
          else if (sub == "Concepts in C Programming-II")
            SizedBox(
                width: 350,
                child: ElevatedButton(
                  child: Text("Concepts in C Programming-II"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CCPState()));
                  },
                ))
          else if (sub == "Engineering Mechanics")
            SizedBox(
                width: 350,
                child: ElevatedButton(
                  child: Text("Engineering Mechanics"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MEState()));
                  },
                ))
          else if (sub == "Basic Electronics")
            SizedBox(
                width: 350,
                child: ElevatedButton(
                    child: Text("Basic Electronics"),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BEState()));
                    }))
          else if (sub == "CIP")
            SizedBox(
                width: 350,
                child: ElevatedButton(
                  child: Text("CIP"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CIPState()));
                  },
                ))
          else if (sub == "CAED")
            SizedBox(
                width: 350,
                child: ElevatedButton(
                    child: Text("CAED"),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => CAEDState()));
                    }))
      ],
    ));
  }
}
