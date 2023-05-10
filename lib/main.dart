import 'package:flutter/material.dart';
import 'package:room_ye/screens/login.dart';
import 'package:room_ye/screens/login_with_password.dart';
import 'package:room_ye/screens/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Room Ye',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.deepOrange,
      ),
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
