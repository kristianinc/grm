import 'package:flutter/material.dart';
import 'package:grm/navbar.dart';

class settings extends StatefulWidget {
  const settings({super.key});

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      drawer: const navbar(),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 10,
            ),
            const Text(
              "App Settings",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
