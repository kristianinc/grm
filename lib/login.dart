import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:grm/dashboard.dart';
import 'package:grm/form1.dart';
import 'package:http/http.dart' as http;

class login extends StatefulWidget {
  login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  void initState() {
    register();
  }

  Map? mapResponse;

  final TextEditingController usernamecontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();

  Future register() async {
    var url = 'https://milliondollarbaby1.000webhostapp.com/endpoints/get.php';
    http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      print(data.toString());
    }
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  Container(
                    height: 100,
                  ),
                  //image starts here
                  Container(
                    //color: Colors.white,
                    child: Center(
                      child: Image.asset(
                        'lib/images/grm-logo.png',
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                  ),
                  const Text(
                    'Sign in',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: 20,
                  ),
                  TextField(
                    controller: usernamecontroller,
                    decoration: InputDecoration(
                        labelText: 'Username',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18))),
                  ),
                  Container(
                    height: 30,
                  ),
                  TextField(
                    controller: passwordcontroller,
                    decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18))),
                  ),
                  Container(
                    height: 30,
                  ),
                  //button starts here.
                  SizedBox(
                    width: 200, // Replace with your desired width
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        //lets send a http request to the api endpoints

                        // register();

                        //route to form1 or dashboard.
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => dashboard()),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromRGBO(1, 134, 1, 1),
                        ),
                      ),
                      child: const Text(
                        'Sign In',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
