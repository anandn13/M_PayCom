import 'package:flutter/material.dart';

class BillRemindersScreen extends StatelessWidget {
  final List<Map<String, String>> reminders = [
    {"name": "Electricity", "due": "2025-09-15", "amount": "₹1,200"},
    {"name": "DTH", "due": "2025-09-20", "amount": "₹450"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bill Reminders')),
      body: ListView.builder(
        itemCount: reminders.length,
        itemBuilder: (context, index) {
          final reminder = reminders[index];
          return Card(
            child: ListTile(
              leading: Icon(Icons.notifications_active, color: Colors.orange),
              title: Text(reminder['name']!),
              subtitle: Text('Due: ${reminder['due']}'),
              trailing: Text(reminder['amount']!, style: TextStyle(fontWeight: FontWeight.bold)),
            ),
          );
        },
      ),
    );
  }
}