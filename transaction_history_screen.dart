import 'package:flutter/material.dart';

class TransactionHistoryScreen extends StatefulWidget {
  @override
  _TransactionHistoryScreenState createState() => _TransactionHistoryScreenState();
}

class _TransactionHistoryScreenState extends State<TransactionHistoryScreen> {
  String filter = "All";

  List<Map<String, dynamic>> transactions = [
    {"type": "Sent", "name": "Raj", "amount": 500, "date": "2025-09-08", "status": "Success"},
    {"type": "Received", "name": "Priya", "amount": 1200, "date": "2025-09-07", "status": "Success"},
    {"type": "Bill", "name": "Electricity", "amount": 900, "date": "2025-09-06", "status": "Pending"},
  ];

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> filtered = filter == "All"
        ? transactions
        : transactions.where((t) => t['type'] == filter).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Transaction History'),
        actions: [
          PopupMenuButton<String>(
            onSelected: (v) => setState(() => filter = v),
            itemBuilder: (context) => [
              PopupMenuItem(value: "All", child: Text("All")),
              PopupMenuItem(value: "Sent", child: Text("Sent")),
              PopupMenuItem(value: "Received", child: Text("Received")),
              PopupMenuItem(value: "Bill", child: Text("Bill")),
            ],
          )
        ],
      ),
      body: ListView.builder(
        itemCount: filtered.length,
        itemBuilder: (context, index) {
          final txn = filtered[index];
          return Card(
            child: ListTile(
              leading: Icon(
                txn['type'] == "Sent" ? Icons.arrow_upward : Icons.arrow_downward,
                color: txn['type'] == "Sent" ? Colors.red : Colors.green,
              ),
              title: Text('${txn['type']} ${txn['name']}'),
              subtitle: Text('${txn['date']} • ₹${txn['amount']}'),
              trailing: Icon(
                txn['status'] == "Success" ? Icons.check_circle : Icons.hourglass_bottom,
                color: txn['status'] == "Success" ? Colors.green : Colors.orange,
              ),
            ),
          );
        },
      ),
    );
  }
}