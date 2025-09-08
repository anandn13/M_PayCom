import 'package:flutter/material.dart';

class SavedPayeesScreen extends StatelessWidget {
  final List<Map<String, String>> payees = [
    {"name": "Raj", "upi": "raj@bank"},
    {"name": "Priya", "upi": "priya@bank"},
    {"name": "Electricity Board", "upi": "ebill@utility"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Saved Payees')),
      body: ListView.builder(
        itemCount: payees.length,
        itemBuilder: (context, index) {
          final payee = payees[index];
          return Card(
            child: ListTile(
              leading: Icon(Icons.person, color: Colors.teal),
              title: Text(payee['name']!),
              subtitle: Text(payee['upi']!),
              trailing: Icon(Icons.send, color: Colors.teal),
              onTap: () {
                // Navigate to Send Money, pre-fill UPI ID
              },
            ),
          );
        },
      ),
    );
  }
}