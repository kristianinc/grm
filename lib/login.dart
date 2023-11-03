import 'package:flutter/material.dart';
import 'package:grm/form1.dart';

class login extends StatelessWidget {
  const login({super.key});

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
                    //controller: _acctController,
                    decoration: InputDecoration(
                        labelText: 'Username',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18))),
                  ),
                  Container(
                    height: 30,
                  ),
                  TextField(
                    //controller: _acctController,
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => form1()),
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
