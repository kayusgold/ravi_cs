import 'dart:io';

import 'package:flutter/material.dart';
import 'package:ravi_cs/views/home_screen.dart';

void main() {
  runApp(MyApp());
  HttpOverrides.global = new MyHttpOverrides();
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ravi CS',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

//There was a certificate issue with your server. I had to ask the app
//to accept any certificate (good or bad) using this class.
class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
