import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:grm/dashboard.dart';
import 'package:grm/navbar.dart';

enum gender { male, female }

class form3 extends StatefulWidget {
  const form3({super.key});

  @override
  State<form3> createState() => _form3State();
}

class _form3State extends State<form3> {
  _form3State() {
    valuechose = ListItems[0];
  }

  gender? _gender;
  bool isChecked = false;
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
      drawer: const navbar(),
      appBar: AppBar(title: const Text("GRM anti-corruption system")),
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                const Text(
                  'Complainer (if any)',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 20,
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

// choosing of files
                const Text(
                  "Attachments",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Container(
                  height: 20,
                ),
                SizedBox(
                  // width: 100, // Replace with your desired width
                  // height: 20,
                  child: ElevatedButton(
                    onPressed: () async {
                      var file = await FilePicker.platform.pickFiles();
                    },
                    child: const Text(
                      'Choose files',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),

                Container(
                  height: 40,
                ),
                const Text(
                  "Captcha",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Container(
                  height: 20,
                ),

                Row(
                  children: [
                    Expanded(
                      child: CheckboxListTile(
                          title: const Text(""),
                          value: isChecked,
                          onChanged: (value) {
                            setState(() {
                              isChecked = value!;
                            });
                          }),
                    ),
                    const Spacer(),
                    ElevatedButton(
                        onPressed: () {}, child: const Text("I am not a robot"))
                  ],
                ),

                Container(
                  height: 40,
                ),

                //bottom navigation.
                Row(children: [
                  const Text("3/3"),
                  const Spacer(),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              //this will submit to success page, which sends data, and displays  a success msg
                              builder: (context) => const dashboard()),
                        );
                      },
                      child: const Text("Submit")),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
