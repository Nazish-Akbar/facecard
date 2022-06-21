import 'package:facecard/ui/screens/signup_screen.dart';
import 'package:facecard/ui/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

import 'ui/screens/login_screen.dart';
import 'ui/screens/top_zapper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}
