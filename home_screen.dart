import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('M_Paycom')),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child: ListTile(
                leading: Icon(Icons.account_balance_wallet, color: Colors.teal),
                title: Text('Balance'),
                subtitle: Text('₹20,000.00', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              QuickAction(icon: Icons.send, label: "Send"),
              QuickAction(icon: Icons.qr_code_scanner, label: "Scan"),
              QuickAction(icon: Icons.receipt_long, label: "Bills"),
              QuickAction(icon: Icons.local_offer, label: "Offers"),
            ],
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16.0),
              children: [
                Text("Recent Transactions", style: TextStyle(fontWeight: FontWeight.bold)),
                ListTile(
                  leading: Icon(Icons.arrow_upward, color: Colors.red),
                  title: Text("Sent to Raj"),
                  subtitle: Text("₹500 • 08 Sep, 07:30 AM"),
                  trailing: Icon(Icons.check_circle, color: Colors.green),
                ),
                ListTile(
                  leading: Icon(Icons.arrow_downward, color: Colors.green),
                  title: Text("Received from Priya"),
                  subtitle: Text("₹1200 • 07 Sep, 09:20 PM"),
                  trailing: Icon(Icons.check_circle, color: Colors.green),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.send), label: "Pay"),
          BottomNavigationBarItem(icon: Icon(Icons.local_offer), label: "Offers"),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: "History"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        currentIndex: 0,
        showUnselectedLabels: true,
        selectedItemColor: Colors.teal,
      ),
    );
  }
}

class QuickAction extends StatelessWidget {
  final IconData icon;
  final String label;

  QuickAction({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.teal.shade100,
          child: Icon(icon, color: Colors.teal, size: 28),
          radius: 28,
        ),
        SizedBox(height: 8),
        Text(label, style: TextStyle(fontSize: 14)),
      ],
    );
  }
}