import 'package:auselessthing/linking/linking.dart';
import 'package:auselessthing/linking/api.dart';
import 'package:flutter/material.dart';

class MathNotes extends StatelessWidget {
  final Future<List<FirebaseFile>> futureFile = FirebaseAPI.listAll("MATH");

  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          backgroundColor: Colors.black12,
          title: Text("Study Material"),
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
                        "Error Occured\nConnect to the internet and try agian",
                        style: TextStyle(color: Colors.white),
                      ),
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

class CCPNotes extends StatelessWidget {
  final Future<List<FirebaseFile>> futureFile = FirebaseAPI.listAll("COMP");

  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          backgroundColor: Colors.black12,
          title: Text("Study Material"),
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
                        "Error Occured\nConnect to the internet and try agian",
                        style: TextStyle(color: Colors.white),
                      ),
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

int count = 0;
Widget buildFile(BuildContext context, FirebaseFile file) => ListTile(
      leading: Icon(
        Icons.arrow_forward_sharp,
        color: Colors.lightBlueAccent,
      ),
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
