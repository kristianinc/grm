import 'package:flutter/material.dart';
import 'package:grm/form3.dart';

enum gender { male, female }

class form2 extends StatefulWidget {
  const form2({super.key});

  @override
  State<form2> createState() => _form2State();
}

class _form2State extends State<form2> {
  _form2State() {
    valuechose = ListItems[0];
  }

  gender? _gender;

  String? valuechose = "";

  List ListItems = ['spoken', 'written', 'heard', 'obtained'];

  Future<void> _SelectDate() async {
    await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2023));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                Container(
                  height: 30,
                ),
                // ElevatedButton(
                //     onPressed: () {
                //       Navigator.pop(
                //         context,
                //         MaterialPageRoute(builder: (context) => form2()),
                //       );
                //     },
                //     child: Text("back")),
                const Text(
                  'incident location',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 20,
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
                    labelText: "(select district)",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),

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
                    labelText: "(select chiefdom)",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
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
                    labelText: "(select section)",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Container(
                  height: 30,
                ),
                const Text(
                  'Suspect Details',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 30,
                ),
                TextField(
                  //controller: _acctController,
                  decoration: InputDecoration(
                      labelText: 'Firstname',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),

                //third dropdown
                Container(
                  height: 30,
                ),
                TextField(
                  //controller: _acctController,
                  decoration: InputDecoration(
                      labelText: 'Lastname',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),

                Container(
                  height: 40,
                ),

                const Text(
                  "Gender",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),

                Row(
                  children: [
                    Expanded(
                      child: RadioListTile<gender>(
                          contentPadding: const EdgeInsets.all(0.0),
                          value: gender.female,
                          title: Text(gender.male.name),
                          groupValue: _gender,
                          onChanged: (val) {
                            setState(() {
                              _gender = val;
                            });
                          }),
                    ),

                    //second radio
                    Expanded(
                      child: RadioListTile(
                          contentPadding: const EdgeInsets.all(0.0),
                          value: gender.male,
                          title: Text(gender.female.name),
                          groupValue: _gender,
                          onChanged: (val) {
                            setState(() {
                              _gender = val;
                            });
                          }),
                    ),
                  ],
                ),

                Container(
                  height: 40,
                ),
                //bottom navigation.
                Row(children: [
                  const Text("2/3"),
                  const Spacer(),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => form3()),
                        );
                      },
                      child: const Text("next"))
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
