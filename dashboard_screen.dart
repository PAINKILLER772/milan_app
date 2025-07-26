
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  final List<Map<String, dynamic>> users = [
    {'name': 'Aisha', 'tokens': 120},
    {'name': 'Ravi', 'tokens': 90},
    {'name': 'Simran', 'tokens': 250},
  ];

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
                trailing: Icon(Icons.edit),
              ),
            );
          },
        ),
      ),
    );
  }
}
