
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  List<Map<String, dynamic>> users = [
    {'name': 'Aisha', 'tokens': 120},
    {'name': 'Ravi', 'tokens': 90},
    {'name': 'Simran', 'tokens': 250},
  ];

  void _editTokens(int index) {
    final controller = TextEditingController(text: users[index]['tokens'].toString());

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Edit Tokens for ${users[index]['name']}"),
          content: TextField(
            controller: controller,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: "Token Count"),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Cancel"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  users[index]['tokens'] = int.tryParse(controller.text) ?? users[index]['tokens'];
                });
                Navigator.pop(context);
              },
              child: Text("Save"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Admin Dashboard')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            final user = users[index];
            return Card(
              child: ListTile(
                title: Text(user['name']),
                subtitle: Text('Tokens: ${user['tokens']}'),
                trailing: IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () => _editTokens(index),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
