import 'package:path_provider/path_provider.dart';
import 'linking.dart';
import 'dart:async';
import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

final AndroidInitializationSettings initializationSettingsAndroid =
    AndroidInitializationSettings('ic_launcher');
final initializationSettings =
    InitializationSettings(android: initializationSettingsAndroid, iOS: null);
final FlutterLocalNotificationsPlugin flutter =
    FlutterLocalNotificationsPlugin();
const AndroidNotificationDetails androidPlatformChannelSpecifics =
    AndroidNotificationDetails(
        'your channel id', 'your channel name', 'your channel description',
        importance: Importance.max, priority: Priority.high, showWhen: false);
const NotificationDetails platformChannelSpecifics =
    NotificationDetails(android: androidPlatformChannelSpecifics);

class FirebaseAPI {
  static Future<List<String>> getdownloadlinks(List<Reference> refs) =>
      Future.wait(refs.map((ref) => ref.getDownloadURL()).toList());

  static Future<List<FirebaseFile>> listAll(String path) async {
    final ref = FirebaseStorage.instance.ref(path);
    final result = await ref.listAll();
    final urls = await getdownloadlinks(result.items);
    return urls
        .asMap()
        .map((index, url) {
          final ref = result.items[index];
          final name = ref.name;
          final file = FirebaseFile(ref: ref, name: name, url: url);

          return MapEntry(index, file);
        })
        .values
        .toList();
  }

  static UploadTask? uploadFile(String dest, File file) {
    Reference ref = FirebaseStorage.instance.ref(dest);
    return ref.putFile(file);
  }

  static Future downloadFile(Reference ref, int count) async {
    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/${ref.name}');
    ref.writeToFile(file);
    return OpenFile.open('${dir.path}/${ref.name}');
  }
}
