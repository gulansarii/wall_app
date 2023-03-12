import 'package:flutter/material.dart';
import 'package:flutter_application_0/FirstScreen.dart';
import 'package:flutter_application_0/Home.dart';
import 'package:flutter_application_0/Login.dart';
import 'package:flutter_application_0/LoginOtp.dart';
import 'package:flutter_application_0/Splash.dart';
import 'package:flutter_application_0/cartPage.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const FirstScreen(),
      // routes: {
      //   '/splash': (context) => Splash(),
      //   '/loginOtp': (context) => LoginOtp(),
      //   '/HomePage': (context) => HomePage(),
      // },
      // initialRoute: '/HomePage',
    );
  }
}
