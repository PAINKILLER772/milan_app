
import 'package:flutter/material.dart';
import 'screens/call_screen.dart';

void main() {
  runApp(MilanApp());
}

class MilanApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Milan',
      theme: ThemeData(primarySwatch: Colors.pink),
      home: CallScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
