import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 10,
      child: Container(
        color: Colors.blue,
        child: ListView(
          children: const [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                  accountName: Text("Prabesh Tamang"),
                  accountEmail: Text("ngprabesh123@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://pbs.twimg.com/profile_images/959496821759467520/XK81q_34_400x400.jpg"),
                  )),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text("About us "),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail_solid,
                color: Colors.white,
              ),
              title: Text("Contact Us "),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.location,
                color: Colors.white,
              ),
              title: Text("Location"),
            ),
          ],
        ),
      ),
    );
  }
}
