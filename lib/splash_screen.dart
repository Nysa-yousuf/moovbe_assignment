import 'dart:async';

// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:moovbe/login_page.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:real_estate/constants/assets.dart';
// import 'package:real_estate/constants/datas.dart';
// import 'package:real_estate/data/sharedpref/shared_preference_helper.dart';
// import 'package:real_estate/di/components/service_locator.dart';
// import 'package:real_estate/ui/login/login_page.dart';
// import 'package:real_estate/ui/ownerApp/ownerHome/owner_home_container.dart';
// import 'package:real_estate/ui/tenantApp/home/home_container.dart';
// import 'package:real_estate/ui/vendorApp/vendor_home_container.dart';
// import 'package:real_estate/utils/device/device_utils.dart';

// Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//   log("Handling a background message: ${message.messageId}");
// }

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // void registerNotification() async {
  //   await Firebase.initializeApp();
  //   _messaging = FirebaseMessaging.instance;
  //   FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  //   NotificationSettings settings = await _messaging.requestPermission(
  //     alert: true,
  //     badge: true,
  //     provisional: false,
  //     sound: true,
  //   );
  //   if (settings.authorizationStatus == AuthorizationStatus.authorized) {
  //     log('User granted permission');
  //     FirebaseMessaging.onMessage.listen(
  //       (RemoteMessage message) async {
  //         log('Message title: ${message.notification?.title}, body: ${message.notification?.body}, data: ${message.data}');
  //
  //         // Parse the message received
  //         PushNotification notification = PushNotification(
  //           title: message.notification?.title,
  //           body: message.notification?.body,
  //           dataTitle: message.data['title'],
  //           dataBody: message.data['body'],
  //         );
  //         _notificationInfo = notification;
  //         if (_notificationInfo != null) {
  //           // For displaying the notification as an overlay
  //           _showNotification(123, _notificationInfo!.title!,
  //               _notificationInfo!.body!, "GET");
  //         }
  //       },
  //     );
  //     print('hii');
  //   } else {
  //     log('User declined or has not accepted permission');
  //   }
  // }
  //
  // // For handling notification when the app is in terminated state
  // checkForInitialMessage() async {
  //   await Firebase.initializeApp();
  //   RemoteMessage? initialMessage =
  //       await FirebaseMessaging.instance.getInitialMessage();
  //
  //   if (initialMessage != null) {
  //     PushNotification notification = PushNotification(
  //       title: initialMessage.notification?.title,
  //       body: initialMessage.notification?.body,
  //       dataTitle: initialMessage.data['title'],
  //       dataBody: initialMessage.data['body'],
  //     );
  //     _notificationInfo = notification;
  //   }
  //   print("check initial notification");
  // }

  // Future<void> _showNotification(
  //   int notificationId,
  //   String notificationTitle,
  //   String notificationContent,
  //   String payload, {
  //   String channelId = '1234',
  //   String channelTitle = 'Android Channel',
  //   Priority notificationPriority = Priority.high,
  //   Importance notificationImportance = Importance.max,
  // }) async {
  //   var androidPlatformChannelSpecifics = AndroidNotificationDetails(
  //     channelId,
  //     channelTitle,
  //     playSound: false,
  //     importance: notificationImportance,
  //     priority: notificationPriority,
  //   );
  //
  //   var iOSPlatformChannelSpecifics =
  //       const DarwinNotificationDetails(presentSound: false);
  //   var platformChannelSpecifics = NotificationDetails(
  //       android: androidPlatformChannelSpecifics,
  //       iOS: iOSPlatformChannelSpecifics);
  //   await flutterLocalNotificationsPlugin.show(
  //     notificationId,
  //     notificationTitle,
  //     notificationContent,
  //     platformChannelSpecifics,
  //     payload: payload,
  //   );
  // }

  // @override
  // void initState() {
  //   startTimer();
  //   registerNotification();
  //   checkForInitialMessage();
  //
  //   // For handling notification when the app is in background but not terminated
  //   FirebaseMessaging.onMessageOpenedApp.listen(
  //     (RemoteMessage message) {
  //       PushNotification notification = PushNotification(
  //         title: message.notification?.title,
  //         body: message.notification?.body,
  //         dataTitle: message.data['title'],
  //         dataBody: message.data['body'],
  //       );
  //       _notificationInfo = notification;
  //     },
  //   );
  //
  //   var initializationSettingsAndroid =
  //       const AndroidInitializationSettings('@mipmap/ic_launcher');
  //   var initializationSettingsIOS = const DarwinInitializationSettings();
  //   var initializationSettings = InitializationSettings(
  //       android: initializationSettingsAndroid, iOS: initializationSettingsIOS);
  //
  //   flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
  //   flutterLocalNotificationsPlugin.initialize(
  //     initializationSettings,
  //     /* onSelectNotification: (dd) {
  //        showDialog(
  //         context: context,
  //         builder: (_) => AlertDialog(
  //           title: Text(dd.toString()),
  //           content: Text("Payload: $dd"),
  //         ),
  //       );
  //     },*/
  //   );
  //
  //   super.initState();
  // }
  //
  // @override
  // Future<void> didChangeDependencies() async {
  //   MySize().init(context);
  //   super.didChangeDependencies();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(252, 252, 21, 59),
      body: Center(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 250, 10, 0),
                  child: Center(
                      child: Column(
                    children: const [
                      Image(
                        width: 200,
                        image: AssetImage("images/moovlogo.png"),
                      ),
                    ],
                  )),
                ),
                // SizedBox(
                //   height: 500,
                // ),
                Container(
                  margin:
                      EdgeInsets.only(left: 10, right: 10, bottom: 2, top: 300),
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    //boxShadow: [
                    // BoxShadow(
                    color: Colors.white,
                    //  blurRadius: 4,
                    //  offset: const Offset(0, 3),
                    // ),
                    //],
                  ),
                  // margin: EdgeInsets.only(bottom: 2),
                  child: TextButton(
                    style: const ButtonStyle(
                        // backgroundColor:
                        // MaterialStateProperty.resolveWith<Color>(
                        //   (Set<MaterialState> states) {
                        //   if (states.contains(MaterialState.pressed)) {
                        //     return themeData.splashColor;
                        //   }
                        //   return themeData
                        //       .primaryColor; // Use the component's default.
                        // },
                        // ),

                        ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()));
                    },
                    child: Text("Get Started",
                        style: TextStyle(
                            color: Color.fromARGB(252, 252, 21, 59),
                            letterSpacing: 0.5)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  startTimer() {
    var duration = const Duration(milliseconds: 2000);
    return Timer(duration, navigate);
  }

  navigate() async {
    print("ooooooooooooooooooooooo");
    // print(sharedPrefsHelper.isLoggedIn());

    ///todo need to unComment in production
    // await FirebaseMessaging.instance.subscribeToTopic("realEstate");

    if (!mounted) return;
    //   if (sharedPrefsHelper.isLoggedIn()) {
    //   //   if (sharedPrefsHelper.userRoleId() == Integers.tenantRoleId) {
    //   //     Navigator.pushReplacement(context,
    //   //         MaterialPageRoute(builder: (context) => const HomeContainer()));
    //   //   } else if (sharedPrefsHelper.userRoleId() == Integers.landLoadRoleId) {
    //   //     Navigator.pushReplacement(
    //   //         context,
    //   //         MaterialPageRoute(
    //   //             builder: (context) => const OwnerHomeContainer()));
    //   //   } else if (sharedPrefsHelper.userRoleId() == Integers.vendorRoleId) {
    //   //     Navigator.pushReplacement(
    //   //         context,
    //   //         MaterialPageRoute(
    //   //             builder: (context) => const VendorHomeContainer()));
    //   //   }
    //   // } else {
    //   //   Navigator.pushReplacement(context,
    //   //       MaterialPageRoute(builder: (context) => const LoginScreen()));
    //   // }
  }
}

// class PushNotification {
//   PushNotification({
//     this.title,
//     this.body,
//     this.dataTitle,
//     this.dataBody,
//   });
//
//   String? title;
//   String? body;
//   String? dataTitle;
//   String? dataBody;
// }
