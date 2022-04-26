// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  String namereturn() {
    return name;
  }

  final _formKey = GlobalKey<FormState>();
  void _hello() {
    final isvalid = _formKey.currentState!.validate();
    if (isvalid) {
      Navigator.pushNamed(context, '/home');
    }
    _formKey.currentState!.save();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Image.asset(
              "assets/images/logo.png",
              fit: BoxFit.fitHeight,
              height: 300,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "hello " + namereturn(),
              // "Hello $name   ",
              style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextFormField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 0.5, color: Colors.blue),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    fillColor: Colors.white.withOpacity(0.2),
                    filled: true,
                    border: const UnderlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 0.5, color: Colors.blue),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: 'Enter your user name ',
                    labelStyle:
                        const TextStyle(color: Colors.black, fontSize: 10.0)),
                onChanged: (value) {
                  name = value;
                  setState(() {});
                },
                onFieldSubmitted: (value) {},
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'invalied';
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 0.5, color: Colors.blue),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    fillColor: Colors.white.withOpacity(0.2),
                    filled: true,
                    border: const UnderlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(100.0),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 0.5, color: Colors.blue),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: 'enter your password ',
                    labelStyle:
                        const TextStyle(color: Colors.black, fontSize: 10.0)),
                onFieldSubmitted: (value) {},
                validator: (value) {
                  if (value!.length < 5) {
                    return 'input at least 5 character';
                  }
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                _hello();

                // Navigator.pushNamed(context, '/home');
              },
              child: const Text('log in '),
              style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  fixedSize: const Size(100, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100))),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(padding: EdgeInsets.all(6)),
            TextButton(
              child: const Text('Forgot password?'),
              onPressed: () {},
            ),
            Row(
              children: [
                const Padding(padding: EdgeInsets.all(58)),
                const Text(
                  "Don't have an account please ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  child: const Text(
                    'sign up',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white10,
                      fixedSize: const Size(100, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    Navigator.pushNamed(context, '/signup');
                  },
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
