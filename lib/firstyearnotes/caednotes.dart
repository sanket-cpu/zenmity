import 'dart:ui';

import 'package:auselessthing/linking/linking.dart';
import 'package:auselessthing/linking/api.dart';
import 'package:flutter/material.dart';

class CAEDNotes extends StatelessWidget {
  final Future<List<FirebaseFile>> futureFile =
      FirebaseAPI.listAll("CHEM CYCLE/CAED/");

  Widget build(BuildContext context) {
    return Scaffold(
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
}

class EMENotes extends StatelessWidget {
  final Future<List<FirebaseFile>> futureFile =
      FirebaseAPI.listAll("PHYSICS CYCLE/EME/");

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

class PhyNotes extends StatelessWidget {
  final Future<List<FirebaseFile>> futureFile =
      FirebaseAPI.listAll("PHYSICS CYCLE/PHYSICS/");

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

class EVSNotes extends StatelessWidget {
  final Future<List<FirebaseFile>> futureFile =
      FirebaseAPI.listAll("PHYSICS CYCLE/EVS/");

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

class ChemNotes extends StatelessWidget {
  final Future<List<FirebaseFile>> futureFile =
      FirebaseAPI.listAll("CHEM CYCLE/CHEM/");

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

class BENotes extends StatelessWidget {
  final Future<List<FirebaseFile>> futureFile =
      FirebaseAPI.listAll("CHEM CYCLE/BE/");

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

class EMNotes extends StatelessWidget {
  final Future<List<FirebaseFile>> futureFile =
      FirebaseAPI.listAll("CHEM CYCLE/EM/");

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

class BEENotes extends StatelessWidget {
  final Future<List<FirebaseFile>> futureFile =
      FirebaseAPI.listAll("PHYSICS CYCLE/BEE");

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

class CIPNotes extends StatelessWidget {
  final Future<List<FirebaseFile>> futureFile =
      FirebaseAPI.listAll("CHEM CYCLE/CIP");

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

class EngNotes extends StatelessWidget {
  final Future<List<FirebaseFile>> futureFile =
      FirebaseAPI.listAll("PHYSICS CYCLE/ENG");

  Widget build(BuildContext context) => SingleChildScrollView(
        child: Scaffold(
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
        ),
      );
}

int count = 0;

Widget buildFile(BuildContext context, FirebaseFile file) =>
    SingleChildScrollView(
      child: ListTile(
        leading: Icon(
          Icons.picture_as_pdf_sharp,
          color: Colors.red,
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
      ),
    );
