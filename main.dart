
import 'package:flutter/material.dart';
import 'screens/swipe_screen.dart';

void main() {
  runApp(MilanApp());
}

class MilanApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Milan',
      theme: ThemeData(primarySwatch: Colors.pink),
      home: SwipeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
