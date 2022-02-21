import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:u_design_i_dare/utils/routes.dart';

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
          padding: const EdgeInsets.all(8),
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: "All Challanges".text.fontFamily('Rampart One').black.xl2.make().centered(),
            ),
             Tile(title: "Day 1", subtitle: "Login Page", route: MyRoutes.day1,),
             const SizedBox(height: 10,),
            Tile(title: "Day 2", subtitle: "Chat UI", route: MyRoutes.day2,),
          ],
        ),
      ),
    );
  }
}

class Tile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String route;
  const Tile({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      horizontalTitleGap: 8,
      leading: const Icon(Icons.arrow_right , color: Colors.white,),
      style: ListTileStyle.drawer,
      title: Text(
        title,
        textScaleFactor: 1.2,
        style: const TextStyle(color: Colors.white),
      ),
      subtitle: Text(
        subtitle,
        textScaleFactor: 1,
        style: const TextStyle(color: Colors.white),
      ),
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      tileColor: Colors.teal,
    );
  }
}
