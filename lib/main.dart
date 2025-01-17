import 'dart:convert';

import 'package:d_method/d_method.dart';
import 'package:depo_antrian_direksi/config/notification_helper.dart';
import 'package:depo_antrian_direksi/config/push_notification_service.dart';
import 'package:depo_antrian_direksi/data/datasource/antrian_data_source.dart';
import 'package:depo_antrian_direksi/data/datasource/auth_local_datasource.dart';
import 'package:depo_antrian_direksi/data/datasource/auth_remote_data_source.dart';
import 'package:depo_antrian_direksi/firebase_options.dart';
import 'package:depo_antrian_direksi/presentation/auth/bloc/bloc/delete_token_bloc.dart';
import 'package:depo_antrian_direksi/presentation/auth/bloc/login/login_bloc.dart';
import 'package:depo_antrian_direksi/presentation/auth/bloc/logout/logout_bloc.dart';
import 'package:depo_antrian_direksi/presentation/auth/pages/login_page.dart';
import 'package:depo_antrian_direksi/presentation/dashboard/bloc/call_antrian/call_antrian_bloc.dart';
import 'package:depo_antrian_direksi/presentation/dashboard/bloc/counter_time/counter_time_bloc.dart';
import 'package:depo_antrian_direksi/presentation/dashboard/bloc/create_antrian/create_antrian_bloc.dart';
import 'package:depo_antrian_direksi/presentation/dashboard/bloc/data_antrian/data_antrian_bloc.dart';
import 'package:depo_antrian_direksi/presentation/dashboard/bloc/skip_antrian/skip_antrian_bloc.dart';
import 'package:depo_antrian_direksi/presentation/dashboard/bloc/status_antrian/status_antrian_bloc.dart';
import 'package:depo_antrian_direksi/presentation/dashboard/bloc/update_antrian/update_status_antrian_bloc.dart';
import 'package:depo_antrian_direksi/presentation/dashboard/pages/dashboard_page.dart';
import 'package:depo_antrian_direksi/presentation/tes_home_page.dart';
import 'package:depo_antrian_direksi/presentation/tes_message_page.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

final navigatorKey = GlobalKey<NavigatorState>();

// function to lisen to background changes
@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  if (kDebugMode) {
    print("Handling a background message: ${message.messageId}");
  }

  String payloadData = jsonEncode(message.data);
  DMethod.log("Cek di Background $payloadData ");

  Map<String, dynamic> decodedData = jsonDecode(payloadData);

  // Ambil nilai dari kunci "antrian"
  String typeAntrian = decodedData['type'];
  // if (typeAntrian == "refreshAntrian") {
  //   getStatusAntrian();
  // } else if (typeAntrian == "countDownTimerAntrian") {
  //   mulaiPenghitungMundur();
  // }
  //NotificationHelper.showNotification(message, flutterLocalNotificationsPlugin);
}

// to handle notification on foreground on web platform
void showNotification({required String title, required String body}) {
  showDialog(
    context: navigatorKey.currentContext!,
    builder: (context) => AlertDialog(
      title: Text(title),
      content: Text(body),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Ok"))
      ],
    ),
  );
}

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await NotificationHelper.initialize(flutterLocalNotificationsPlugin);

  /* FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
    if (message.notification != null) {
      if (kDebugMode) {
        print("Background Notification Tapped");
      }
      // navigatorKey.currentState!.pushNamed("/message", arguments: message);
    }
  });
 */
  /* PushNotifications.init();
  // only initialize if platform is not web
  if (!kIsWeb) {
    PushNotifications.localNotiInit();
  } */

  //Listen ForeGround Notifications
  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    String payloadData = jsonEncode(message.data);
    DMethod.log("Cek di Foreground $payloadData ");
  });

  // Listen to background notifications
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  // FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
  //   alert: true,
  //   badge: true,
  //   sound: true,
  // );

  // to handle foreground notifications
  /* FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    String payloadData = jsonEncode(message.data);

    if (message.notification != null) {
      if (kIsWeb) {
        // showNotification(
        //     title: message.notification!.title!,
        //     body: message.notification!.body!);
      } else {
        // PushNotifications.showSimpleNotification(
        //     title: message.notification!.title!,
        //     body: message.notification!.body!,
        //     payload: payloadData);
      }
    }
  }); */

  // for handling in terminated state
  /* final RemoteMessage? message =
      await FirebaseMessaging.instance.getInitialMessage();

  if (message != null) {
    Future.delayed(const Duration(seconds: 1), () {
      //navigatorKey.currentState!.pushNamed("/message", arguments: message);
    });
  } */

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginBloc(AuthRemoteDataSource()),
        ),
        BlocProvider(
          create: (context) => LogoutBloc(AuthRemoteDataSource()),
        ),
        BlocProvider(
          create: (context) => CreateAntrianBloc(AntrianDataSource()),
        ),
        BlocProvider(
          create: (context) => DataAntrianBloc(AntrianDataSource()),
        ),
        BlocProvider(
          create: (context) => StatusAntrianBloc(AntrianDataSource()),
        ),
        BlocProvider(
          create: (context) => CounterTimeBloc(),
        ),
        BlocProvider(
          create: (context) => CallAntrianBloc(AntrianDataSource()),
        ),
        BlocProvider(
          create: (context) => UpdateStatusAntrianBloc(AntrianDataSource()),
        ),
        BlocProvider(
          create: (context) => SkipAntrianBloc(AntrianDataSource()),
        ),
        BlocProvider(
          create: (context) => DeleteTokenBloc(AuthRemoteDataSource()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        navigatorKey: navigatorKey,
        title: 'Depo Antrian Direksi',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        // routes: {
        //   '/': (context) =>  LoginPage(),
        //   '/message': (context) =>  TesMessagePage()
        // },
        //home: const TesHomePage(),

        home: FutureBuilder(
          future: AuthLocalDataSource().isUserLogedIn(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            }
            if (snapshot.hasData && snapshot.data == true) {
              return const DashboardPage();
            } else {
              return const LoginPage();
            }
          },
        ),
      ),
    );
  }
}
