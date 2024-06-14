import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class TesHomePage extends StatefulWidget {
  const TesHomePage({super.key});

  @override
  State<TesHomePage> createState() => _TesHomePageState();
}

class _TesHomePageState extends State<TesHomePage> {

    final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

     _firebaseMessaging.getToken().then((token) {
      print("Token FCM: $token");
      // Gunakan token sesuai kebutuhan Anda (misalnya, kirimkan ke server Anda)
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Push Notifications")),
      body: Center(
        child: Text(
          "Let's learn to push notifications in Flutter",
        ),
      ),
    );
  }
}