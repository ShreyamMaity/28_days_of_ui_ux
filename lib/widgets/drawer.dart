import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:u_design_i_dare/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';

// bool isDark = false;

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Drawer(
      child: Container(
        color: Colors.transparent,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: "All Challanges".text.black.xl2.make().centered(),
            ),
            ListTile(
              title: const Text(
                "Day 1",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
              subtitle: const Text(
                "Login Page",
                textScaleFactor: 1,
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.day1);
              },
              tileColor: Colors.teal,
            ),
          ],
        ),
      ),
    );
  }
}