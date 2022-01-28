import "package:flutter/material.dart";
import 'firstyearsubjects/subjects.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:firebase_core/firebase_core.dart';
import "package:firebase_messaging/firebase_messaging.dart";
import 'misc.dart';
import 'auth/signUI.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: SampleApp(),
  ));
}

class SampleApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return SampleExtend();
  }
}

class SampleExtend extends State<SampleApp> {
  @override
  Widget build(BuildContext context) {
    FirebaseMessaging.instance.getInitialMessage();
    final tabs = ["Physics Cycle", "Chemistry Cycle", "Miscellaneous"];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: DefaultTabController(
        length: tabs.length,
        child: SafeArea(
          child: Scaffold(
            drawer: Drawer(
                child: ListView(
              children: [
                DrawerHeader(
                    child:
                        Text("ZeNMITy", style: TextStyle(color: Colors.white)),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        image: DecorationImage(
                            image: AssetImage("assets/ic_launcher.png"),
                            fit: BoxFit.fitHeight))),
                ListTile(
                  leading: Icon(
                    Icons.info,
                    color: Colors.blue,
                  ),
                  title: Text(
                    "About ZeNMITy",
                  ),
                  onTap: licenses,
                ),
                ListTile(
                  onTap: emailfunc,
                  leading: Icon(
                    Icons.mail,
                    color: Colors.blue,
                  ),
                  title: Text("Developer Contact"),
                  enabled: true,
                ),
                /* ListTile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignInState()));
                  },
                  leading: Icon(
                    Icons.lock,
                    color: Colors.black,
                  ),
                  title: Text("ZeNMITy Account"),
                  enabled: true,
                ),*/
              ],
            )),
            backgroundColor: Colors.black12,
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.black,
              bottom: TabBar(
                tabs: [
                  for (final tab in tabs) Text(tab.toString()),
                ],
                isScrollable: true,
              ),
              title: Text("ZeNMITy"),
            ),
            body: TabBarView(children: [
              for (final tab1 in tabs)
                if (tab1.toString() == "Physics Cycle")
                  Center(
                    child: PhyCycle(),
                  )
                else if (tab1.toString() == "Chemistry Cycle")
                  Center(
                    child: ChemCycle(),
                  )
                else
                  Center(
                    child: Misc(),
                  )
            ]),
          ),
        ),
      ),
    );
  }

  licenses() {
    showAboutDialog(
        context: context,
        applicationIcon:
            Image.asset("assets/ic_launcher.png", width: 60, height: 60),
        applicationName: "ZeNMITy",
        applicationVersion: "v1.0.3");

    /* showLicensePage(
        context: context,
        applicationIcon:
            Image.asset("assets/images.png", width: 500, height: 50),
        applicationName: "ZeNMITy",
        applicationVersion: "v1.0.0");*/
  }
}

emailfunc() async {
  final Email email = Email(
    recipients: ['sanket.dbv@gmail.com'],
    isHTML: false,
  );
  await FlutterEmailSender.send(email);
}
