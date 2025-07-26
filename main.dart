
import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(MilanApp());
}

class MilanApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Milan',
      theme: ThemeData(primarySwatch: Colors.pink),
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
