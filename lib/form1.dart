import 'package:flutter/material.dart';
import 'package:grm/form2.dart';
import 'package:grm/navbar.dart';
import 'package:intl/intl.dart';

class form1 extends StatefulWidget {
  const form1({super.key});

  @override
  State<form1> createState() => _form1State();
}

class _form1State extends State<form1> {
  _form1State() {
    valuechose = ListItems[0];
  }
//text editing controllers to pick data
  TextEditingController date = TextEditingController();
  String? valuechose = "";

  List ListItems = ['spoken', 'written', 'heard', 'obtained'];

  Future<DateTime?> _SelectDate() async {
    final pickeddate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2026));

    if (pickeddate != null) {
      setState(() {
        date.text = DateFormat('dd-MM-yyyy').format(pickeddate);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: navbar(),
      appBar: AppBar(title: const Text("GRM anti-corruption system")),
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                Container(
                  height: 5,
                ),
                const Text(
                  'Submit a grievance',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 25,
                ),
                TextField(
                  //controller: _acctController,
                  decoration: InputDecoration(
                      labelText: 'summary of grievance',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                Container(
                  height: 30,
                ),
                TextFormField(
                  minLines: 2,
                  maxLines: 10,
                  keyboardType: TextInputType.multiline,
                  decoration: const InputDecoration(
                      hintText: 'details of what happened',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
                Container(
                  height: 30,
                ),
                TextField(
                    controller: date,
                    decoration: InputDecoration(
                        labelText: 'Date',
                        filled: true,
                        prefixIcon: const Icon(Icons.calendar_today),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                    readOnly: true,
                    onTap: () {
                      _SelectDate();
                    }),
                Container(
                  height: 30,
                ),
//drop down button
                DropdownButtonFormField(
                  value: valuechose,
                  items: ListItems.map((e) {
                    return DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    );
                  }).toList(),
                  onChanged: (val) {
                    setState(() {
                      valuechose = val as String;
                    });
                  },
                  icon: const Icon(
                    Icons.arrow_drop_down_circle,
                    color: Colors.blue,
                  ),
                  dropdownColor: Colors.blue[100],
                  decoration: InputDecoration(
                    labelText: "How Reported (select option)",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Container(
                  height: 30,
                ),
                DropdownButtonFormField(
                  value: valuechose,
                  items: ListItems.map((e) {
                    return DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    );
                  }).toList(),
                  onChanged: (val) {
                    setState(() {
                      valuechose = val as String;
                    });
                  },
                  icon: const Icon(
                    Icons.arrow_drop_down_circle,
                    color: Colors.blue,
                  ),
                  dropdownColor: Colors.blue[100],
                  decoration: InputDecoration(
                    labelText: "complaint category",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),

                //third dropdown
                Container(
                  height: 30,
                ),
                DropdownButtonFormField(
                  value: valuechose,
                  items: ListItems.map((e) {
                    return DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    );
                  }).toList(),
                  onChanged: (val) {
                    setState(() {
                      valuechose = val as String;
                    });
                  },
                  icon: const Icon(
                    Icons.arrow_drop_down_circle,
                    color: Colors.blue,
                  ),
                  dropdownColor: Colors.blue[100],
                  decoration: InputDecoration(
                    labelText: "Location of incident (select option)",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),

                Container(
                  height: 40,
                ),
                //bottom navigation.
                Row(children: [
                  Text("1/3"),
                  Spacer(),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => form2()),
                        );
                      },
                      child: Text("next"))
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
