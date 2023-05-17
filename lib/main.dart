import 'package:flutter/material.dart';
import 'package:room_ye/config/theme.dart';
import 'package:room_ye/screens/login.dart';

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
        colorScheme: MycolorScheme,
      ),
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
