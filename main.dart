
import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(AdminPanelApp());
}

class AdminPanelApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Milan Admin Panel',
      theme: ThemeData(primarySwatch: Colors.pink),
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
