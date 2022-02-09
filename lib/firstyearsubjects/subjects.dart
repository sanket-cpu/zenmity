import 'package:auselessthing/firstyearnotes/math.dart';
import 'package:flutter/material.dart';
import 'package:auselessthing/firstyearnotes/caednotes.dart';

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
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Physics Cycle"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Container(
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
                          MaterialPageRoute(builder: (context) => PhyNotes()));
                    },
                  ))
            else if (sub == "Engineering Mathematics-II")
              SizedBox(
                  width: 350,
                  child: ElevatedButton(
                    child: Text("Engineering Mathematics-II"),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MathNotes()));
                    },
                  ))
            else if (sub == "Concepts in C Programming-II")
              SizedBox(
                  width: 350,
                  child: ElevatedButton(
                    child: Text("Concepts in C Programming-II"),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => CCPNotes()));
                    },
                  ))
            else if (sub == "Elements of Mechanical Engineering")
              SizedBox(
                  width: 350,
                  child: ElevatedButton(
                    child: Text("Elements of Mechanical Engineering"),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => EMENotes()));
                    },
                  ))
            else if (sub == "Basic Electrical Engineering ")
              SizedBox(
                  width: 350,
                  child: ElevatedButton(
                      child: Text("Basic Electrical Engineering "),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BEENotes()));
                      }))
            else if (sub == 'Environmental Studies')
              SizedBox(
                  width: 350,
                  child: ElevatedButton(
                    child: Text('Environmental Studies'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => EVSNotes()));
                    },
                  ))
            else if (sub == "English")
              SizedBox(
                  width: 350,
                  child: ElevatedButton(
                      child: Text("English"),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EngNotes()));
                      }))
        ],
      )),
    );
  }
}

class ChemCycle extends StatefulWidget {
  @override
  ChemSub createState() => ChemSub();
}

class ChemSub extends State<ChemCycle> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text("Chemistry Cycle"),
      ),
      body: Container(
          child: Column(
        children: [
          for (sub in chemlist)
            if (sub == 'Engineering Chemistry')
              Center(
                child: SizedBox(
                    width: 350,
                    child: ElevatedButton(
                      child: Text('Engineering Chemistry'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChemNotes()));
                      },
                    )),
              )
            else if (sub == "Engineering Mathematics-II")
              Center(
                child: SizedBox(
                    width: 350,
                    child: ElevatedButton(
                      child: Text("Engineering Mathematics-II"),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MathNotes()));
                      },
                    )),
              )
            else if (sub == "Concepts in C Programming-II")
              Center(
                child: SizedBox(
                    width: 350,
                    child: ElevatedButton(
                      child: Text("Concepts in C Programming-II"),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CCPNotes()));
                      },
                    )),
              )
            else if (sub == "Engineering Mechanics")
              Center(
                child: SizedBox(
                    width: 350,
                    child: ElevatedButton(
                      child: Text("Engineering Mechanics"),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => EMNotes()));
                      },
                    )),
              )
            else if (sub == "Basic Electronics")
              Center(
                child: SizedBox(
                    width: 350,
                    child: ElevatedButton(
                        child: Text("Basic Electronics"),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BENotes()));
                        })),
              )
            else if (sub == "CIP")
              Center(
                child: SizedBox(
                    width: 350,
                    child: ElevatedButton(
                      child: Text("CIP"),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CIPNotes()));
                      },
                    )),
              )
            else if (sub == "CAED")
              Center(
                child: SizedBox(
                    width: 350,
                    child: ElevatedButton(
                        child: Text("CAED"),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CAEDNotes()));
                        })),
              )
        ],
      )),
    );
  }
}
