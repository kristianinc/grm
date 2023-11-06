import 'package:flutter/material.dart';
import 'package:grm/dashboard.dart';
import 'package:grm/form1.dart';
import 'package:grm/login.dart';
import 'package:grm/settings.dart';

class navbar extends StatelessWidget {
  const navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text("Kiiza Christian"),
            accountEmail: const Text("xankiiza@icloud.com"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'lib/images/grm-logo.png',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnBB7poRRAORotZs9qOoCjqNyjTu8Ta9FCRQ&usqp=CAU'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.new_label),
            title: Text('New Claim'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => form1()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('claims & statuses'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => dashboard()),
              );
            },
          ),
          ListTile(
              leading: Icon(Icons.settings),
              title: Text('settings'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => settings()),
                );
              }),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('exit'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => login()),
              );
            },
          ),
        ],
      ),
    );
  }
}
