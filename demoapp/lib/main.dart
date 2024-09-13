import 'package:demoapp/view/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// This is the entry point of the app. It initializes the app, sets up routes,
/// and displays the initial screen (LoginPage). It uses GetX for state management
/// and routing.

void main() {
  runApp(MyApp()); 
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}
