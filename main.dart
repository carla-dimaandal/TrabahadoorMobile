import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/HomePage.dart';
import 'package:flutter_application_1/pages/ChatPage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF5F3F3),
        appBarTheme: AppBarTheme(
          backgroundColor:Color(0xFFF5F3F3),
          foregroundColor: Colors.black,
        ),
      ),
      routes: {
        "/" : (context) => HomePage(),
        "chatPage" : (context) => ChatPage(),
      },
    );
  }
}