import 'package:flutter/material.dart';
import "package:auselessthing/firstyearsubjects/subjects.dart";

class Cycles extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text("Cycles"),
      ),
      body: Container(
        child: Column(
          children: [
            Center(
              child: SizedBox(
                width: 350,
                child: ElevatedButton(
                  child: Text('Physics Cycle'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PhyCycle()));
                  },
                ),
              ),
            ),
            Center(
              child: SizedBox(
                  width: 350,
                  child: ElevatedButton(
                    child: Text('Chemistry Cycles'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ChemCycle()));
                    },
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
