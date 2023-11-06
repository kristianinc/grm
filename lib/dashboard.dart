import 'package:flutter/material.dart';
import 'package:grm/form1.dart';
import 'package:grm/form2.dart';
import 'package:grm/form3.dart';
import 'package:grm/navbar.dart';
import 'package:grm/splashscreen.dart';

class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    form1(),
    form2(),
    form3(),
    Splashscreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: navbar(),
      appBar: AppBar(title: const Text("GRM anti-corruption system")),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 20,
            ),
            const Text(
              "Dashboard",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
