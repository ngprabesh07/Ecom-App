import 'package:ecommerce_app/pages/login_page.dart';
import 'package:ecommerce_app/pages/signup.dart';
import 'package:flutter/material.dart';

import 'pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      routes: {
        "/": (context) => const LoginPage(),
        "/home": (context) => const HomePage(),
        "/signup": (context) => const Signup(),
      },
    );
  }
}
