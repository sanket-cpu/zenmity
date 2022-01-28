import 'package:auselessthing/insidepages/uploading.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'auth.dart';

class SignInState extends StatefulWidget {
  @override
  State<SignInState> createState() => Signin();
}

class Signin extends State<SignInState> {
  FirebaseAuth auth = FirebaseAuth.instance;
  Widget build(BuildContext context) {
    var password = TextEditingController();
    var email = TextEditingController();
    final GlobalKey<FormState> key = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Sign in page")),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height / 1.5,
        alignment: Alignment.center,
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 30,
              ),
              TextFormField(
                  controller: email,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15))),
                      hintText: "name@nmit.ac.in")),
              TextFormField(
                  obscureText: true,
                  controller: password,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15))),
                      hintText: "enter password")),
              Container(
                width: MediaQuery.of(context).size.width / 1.5,
                child: ElevatedButton(
                  onPressed: () async {
                    var auth = await signin(email.text, password.text);
                    if (auth) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UploadState()));
                    }
                  },
                  child: Text("Sign in"),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)))),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.5,
                child: ElevatedButton(
                  onPressed: () async {
                    register(email.text, password.text);
                  },
                  child: Text("Register"),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)))),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.5,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Sign in with google"),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.purple,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
