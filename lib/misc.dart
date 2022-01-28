import './linking/linking.dart';
import './linking/api.dart';
import 'package:flutter/material.dart';

class Misc extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
              width: 350,
              child: ElevatedButton(
                child: Text('Timetables'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TimeTable()));
                },
              )),
          SizedBox(
              width: 350,
              child: ElevatedButton(
                child: Text('Syllabus Copies'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SyllabusCopy()));
                },
              )),
          SizedBox(
              width: 350,
              child: ElevatedButton(
                child: Text('Circulars and other notices'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Circulars()));
                },
              ))
        ],
      ),
    );
  }
}

class SyllabusCopy extends StatelessWidget {
  final Future<List<FirebaseFile>> futureFile =
      FirebaseAPI.listAll("MISC/SYLLABUS COPIES");

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text("Syllabus Copies"),
      ),
      body: FutureBuilder<List<FirebaseFile>>(
          future: futureFile,
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return Center(child: CircularProgressIndicator());
              default:
                if (snapshot.hasError) {
                  return Center(
                    child: Text(
                        "Error Occured\nConnect to the internet and try agian"),
                  );
                } else {
                  final files = snapshot.data!;
                  return Column(
                    children: [
                      Expanded(
                          child: ListView.builder(
                              itemCount: files.length,
                              itemBuilder: (context, index) {
                                final file = files[index];
                                return buildFile(context, file);
                              }))
                    ],
                  );
                }
            }
          }),
    );
  }
}

class Circulars extends StatelessWidget {
  final Future<List<FirebaseFile>> futureFile =
      FirebaseAPI.listAll("MISC/CIRCULARS");

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text("Circulars and other Noticesmp3"),
      ),
      body: FutureBuilder<List<FirebaseFile>>(
          future: futureFile,
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return Center(child: CircularProgressIndicator());
              default:
                if (snapshot.hasError) {
                  return Center(
                    child: Text(
                        "Error Occured\nConnect to the internet and try agian"),
                  );
                } else {
                  final files = snapshot.data!;
                  return Column(
                    children: [
                      Expanded(
                          child: ListView.builder(
                              itemCount: files.length,
                              itemBuilder: (context, index) {
                                final file = files[index];
                                return buildFile(context, file);
                              }))
                    ],
                  );
                }
            }
          }),
    );
  }
}

int count = 0;

class TimeTable extends StatelessWidget {
  final Future<List<FirebaseFile>> futureFile =
      FirebaseAPI.listAll("MISC/TIMETABLES");

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text("Timetables"),
      ),
      body: FutureBuilder<List<FirebaseFile>>(
          future: futureFile,
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return Center(child: CircularProgressIndicator());
              default:
                if (snapshot.hasError) {
                  return Center(
                    child: Text(
                        "Error Occured\nConnect to the internet and try agian"),
                  );
                } else {
                  final files = snapshot.data!;
                  return Column(
                    children: [
                      Expanded(
                          child: ListView.builder(
                              itemCount: files.length,
                              itemBuilder: (context, index) {
                                final file = files[index];
                                return buildFile(context, file);
                              }))
                    ],
                  );
                }
            }
          }),
    );
  }
}

Widget buildFile(BuildContext context, FirebaseFile file) => ListTile(
      leading: Icon(Icons.arrow_forward_sharp, color: Colors.blue),
      title: Text(file.name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.none,
            color: Colors.white,
          )),
      onTap: () async {
        await FirebaseAPI.downloadFile(file.ref, count);
        // count = count + 1;
        //print("count incrementeed");
      },
    );
