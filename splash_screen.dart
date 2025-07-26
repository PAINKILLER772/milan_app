
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.favorite, size: 80, color: Colors.pink),
            SizedBox(height: 20),
            Text('Milan', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.pink)),
          ],
        ),
      ),
    );
  }
}
