import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationHelper {
  static Future<void> initialize(
      FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin) async {
    var androidInitialize =
        const AndroidInitializationSettings('@mipmap/launcher_icon');
    var iOSInitialize = DarwinInitializationSettings();
    var initializationSettings =
        InitializationSettings(android: androidInitialize, iOS: iOSInitialize);
    flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      /* onSelectNotification: (String? payload) async {
        print("Notif Res ${payload!}");
        try {
          if (payload != null && payload.isNotEmpty) {
            print("..... Payload.....");
            //Get.toNamed(RouteName.page_notification);
          } else {}
        } catch (e) {
          print("..... Payload Error.....");
          throw Exception(e);
        }

        return;
      }, */
    );

    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print("...opened");
      print(
          "onMessage: ${message.data['title']}/${message.notification?.body} ");
      try {
        showNotification(message, flutterLocalNotificationsPlugin);
      } catch (e) {
        throw Exception(e);
      }
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      //insertNotificationtoSQfLite(message);

      //Get.toNamed(RouteName.page_notification);
    });
  }

  static Future<void> showNotification(
      RemoteMessage message, FlutterLocalNotificationsPlugin fln) async {
    BigTextStyleInformation bigTextStyleInformation = BigTextStyleInformation(
      message.notification!.body.toString(),
      htmlFormatBigText: true,
      contentTitle: message.notification!.title.toString(),
      htmlFormatContentTitle: true,
    );

    AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails(
      'antriandireksi',
      'antriandireksi',
      sound: RawResourceAndroidNotificationSound('notif_reveal'),
      importance: Importance.high,
      styleInformation: bigTextStyleInformation,
      priority: Priority.high,
      playSound: true,      
      
    );

    

    NotificationDetails platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics,
      iOS: DarwinNotificationDetails(
        sound: 'music_reveal.wav',
        presentAlert: true,
        presentBadge: true,
        presentSound: true,
        
      ),
    );
    await fln.show(
      0,
      message.notification?.title,
      message.notification?.body,
      platformChannelSpecifics,
      payload: message.data['title'],
    );
  }
}
