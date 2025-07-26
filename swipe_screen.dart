
import 'package:flutter/material.dart';

class SwipeScreen extends StatefulWidget {
  @override
  _SwipeScreenState createState() => _SwipeScreenState();
}

class _SwipeScreenState extends State<SwipeScreen> {
  final List<Map<String, String>> profiles = [
    {'name': 'Aisha', 'age': '22', 'image': 'https://via.placeholder.com/150'},
    {'name': 'Ravi', 'age': '25', 'image': 'https://via.placeholder.com/150'},
    {'name': 'Simran', 'age': '24', 'image': 'https://via.placeholder.com/150'},
  ];

  int currentIndex = 0;

  void _swipeRight() {
    setState(() {
      if (currentIndex < profiles.length - 1) {
        currentIndex++;
      }
    });
  }

  void _swipeLeft() {
    setState(() {
      if (currentIndex < profiles.length - 1) {
        currentIndex++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final profile = profiles[currentIndex];
    return Scaffold(
      appBar: AppBar(title: Text("Swipe Matches")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(profile['image']!),
            ),
            SizedBox(height: 20),
            Text('${profile['name']}, ${profile['age']}', style: TextStyle(fontSize: 24)),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: _swipeLeft,
                  child: Icon(Icons.clear),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                ),
                ElevatedButton(
                  onPressed: _swipeRight,
                  child: Icon(Icons.favorite),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
