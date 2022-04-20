import 'package:ecommerce_app/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var myname = " PRABESH";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("WELCOME $myname"),
      ),
      body: SingleChildScrollView(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text('hello '),
            Image.asset("assets/images/my.png"),
          ],
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
