import 'package:flutter/material.dart';

class RewardsCenterScreen extends StatelessWidget {
  final List<Map<String, String>> rewards = [
    {"title": "₹20 Cashback", "desc": "On first bill payment", "claimed": "No"},
    {"title": "₹50 Referral", "desc": "Invite a friend to M_Paycom", "claimed": "Yes"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Rewards Center')),
      body: ListView.builder(
        itemCount: rewards.length,
        itemBuilder: (context, index) {
          final reward = rewards[index];
          return Card(
            child: ListTile(
              leading: Icon(Icons.card_giftcard, color: Colors.purple),
              title: Text(reward['title']!),
              subtitle: Text(reward['desc']!),
              trailing: reward['claimed'] == "Yes"
                  ? Icon(Icons.check, color: Colors.green)
                  : ElevatedButton(
                      child: Text("Claim"),
                      onPressed: () {
                        // Handle claim logic
                      },
                    ),
            ),
          );
        },
      ),
    );
  }
}