import 'package:flutter/material.dart';

void main() {
  runApp(const DrawerScreen());
}

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Telegram'),
          elevation: 0,
          foregroundColor: Colors.white,
          backgroundColor: const Color(0xFF517da2),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.search_outlined),
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Color(0xFF517da2)),
                accountName: Text(
                  'Eng Salim',
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text('+252 61 799 2890'),
                currentAccountPicture: CircleAvatar(
                  foregroundImage: AssetImage('assets/profile.jpg'),
                ),
              ),
              ListTile(
                title: Text('My Profile'),
                leading: Icon(Icons.account_circle_outlined),
              ),
              Divider(
                thickness: 1,
              ),
              ListTile(
                title: Text('New Group'),
                leading: Icon(Icons.group_add_outlined),
              ),
              ListTile(
                title: Text('Contacts'),
                leading: Icon(Icons.person_outline),
              ),
              ListTile(
                title: Text('Calls'),
                leading: Icon(Icons.call_outlined),
              ),
              ListTile(
                title: Text('People Nearby'),
                leading: Icon(Icons.person_pin_circle_outlined),
              ),
              ListTile(
                title: Text('Saved Messages'),
                leading: Icon(Icons.bookmark_outline),
              ),
              ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings_outlined),
              ),
              Divider(
                thickness: 1,
              ),
              ListTile(
                title: Text('Invite Friends'),
                leading: Icon(Icons.person_add_alt_1_outlined),
              ),
              ListTile(
                title: Text('Telegram Feature'),
                leading: Icon(Icons.help_outline),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
