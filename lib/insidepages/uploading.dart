import 'package:auselessthing/linking/api.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:path/path.dart';
import 'package:open_file/open_file.dart';
import "package:file_picker/file_picker.dart";

class UploadState extends StatefulWidget {
  @override
  State<UploadState> createState() => UploadFile();
}

File? file;

class UploadFile extends State<UploadState> {
  var cycle = ["Physics", "Chemistry"];
  var existing = "Chemistry";
  var psubjects = [
    "Engineering Physics",
    "Engineering Mathematics-II",
    "Elements of Mechanical Engineering",
    "Basic Electrical Engineering ",
    "Concepts in C Programming-II",
    "Environmental Studies",
    "English"
  ];
  var one = "English";
  var csubjects = [
    "Engineering Chemistry",
    "Engineering Mathematics-II",
    "Engineering Mechanics",
    "Basic Electronics",
    "Concepts in C Programming-II",
    "CIP",
    'CAED'
  ];
  var two = "CAED";
  Widget build(BuildContext context) {
    final filename = file != null ? basename(file!.path) : "No file selected";
    return Scaffold(
      appBar: AppBar(
        title: Text("Upload Files"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: selectFile,
              child: ListTile(
                leading: Icon(Icons.add),
                title: Text("Select files"),
              ),
            ),
          ),
          Text(filename),
          DropdownButton<String>(
            items: cycle.map((String dropdown) {
              return DropdownMenuItem<String>(
                child: Text(dropdown),
                value: dropdown,
              );
            }).toList(),
            onChanged: (String? newvalue) {
              setState(() {
                this.existing = newvalue!;
              });
            },
            value: existing,
          ),
          if (cycle.toString() == "Physics")
            DropdownButton<String>(
              items: psubjects.map((String dropdown) {
                return DropdownMenuItem<String>(
                  child: Text(dropdown),
                  value: dropdown,
                );
              }).toList(),
              onChanged: (String? newvalue) {
                setState(() {
                  this.one = newvalue!;
                });
              },
              value: one,
            )
          else if (cycle.toString() == "Chemistry")
            Center(
              child: DropdownButton<String>(
                items: csubjects.map((String dropdown) {
                  return DropdownMenuItem<String>(
                    child: Text(dropdown),
                    value: dropdown,
                  );
                }).toList(),
                onChanged: (String? newvalue) {
                  setState(() {
                    this.two = newvalue!;
                  });
                },
                value: two,
              ),
            ),
          DropdownButton<String>(
            items: csubjects.map((String dropdown) {
              return DropdownMenuItem<String>(
                child: Text(dropdown),
                value: dropdown,
              );
            }).toList(),
            onChanged: (String? newvalue) {
              setState(() {
                this.two = newvalue!;
              });
            },
            value: two,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                var dest = "CHEM CYCLE\ ";
                FirebaseAPI.uploadFile(dest, file!);
              },
              child: ListTile(
                leading: Icon(Icons.cloud_circle_outlined),
                title: Text("Upload files"),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> selectFile() async {
    //File? file;
    final result = await FilePicker.platform.pickFiles(allowMultiple: false);
    final path = result!.files.single.path!;
    setState(() {
      file = File(path);
    });
  }
}
