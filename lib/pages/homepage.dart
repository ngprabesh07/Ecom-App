import 'package:ecommerce_app/widgets/drawer.dart';
import 'package:ecommerce_app/widgets/item_widget.dart';
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
    var CatalogModel;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("WELCOME $myname"),
      ),
      body: SingleChildScrollView(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            ListView.builder(
              itemCount: CatalogModel.items.length,
              itemBuilder: (context, index) {
                return ItemWidget(
                  item: CatalogModel.items[index],
                );
              },
            )
          ],
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
