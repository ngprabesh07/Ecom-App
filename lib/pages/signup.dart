import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Padding(
              padding: EdgeInsets.all(18.0),
              child: Text('Please filll fill the following  '),
            ),
            const SizedBox(
              height: 40,
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: ' First Name ',
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                    color: Colors.red.shade400,
                  )),
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: ' Last  Name ',
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                    color: Colors.red.shade400,
                  )),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                child: const Text('Sign Up'))
          ],
        ),
      ),
    );
  }
}
