
import 'package:flutter/material.dart';

class TokenStoreScreen extends StatelessWidget {
  final List<Map<String, dynamic>> tokenPackages = [
    {'tokens': 50, 'price': '₹49'},
    {'tokens': 100, 'price': '₹89'},
    {'tokens': 250, 'price': '₹199'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Buy Tokens')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: tokenPackages.length,
        itemBuilder: (context, index) {
          final package = tokenPackages[index];
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              leading: Icon(Icons.monetization_on, color: Colors.pink),
              title: Text('${package['tokens']} Tokens'),
              subtitle: Text(package['price']),
              trailing: ElevatedButton(
                onPressed: () {
                  // Payment logic here
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Purchased ${package['tokens']} tokens!"))
                  );
                },
                child: Text('Buy'),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
              ),
            ),
          );
        },
      ),
    );
  }
}
