import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.lock),
            title: Text('Change PIN'),
            onTap: () {
              // Navigate to Change PIN screen
            },
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text('Language'),
            subtitle: Text('English'),
            onTap: () {
              // Show language selection
            },
          ),
          ListTile(
            leading: Icon(Icons.brightness_6),
            title: Text('Dark Mode'),
            trailing: Switch(
              value: Theme.of(context).brightness == Brightness.dark,
              onChanged: (val) {
                // Implement dark mode toggle
              },
            ),
          ),
          ListTile(
            leading: Icon(Icons.devices),
            title: Text('Manage Devices'),
            onTap: () {
              // Show device list
            },
          ),
        ],
      ),
    );
  }
}