// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:u_design_i_dare/widgets/drawer.dart';

class PageStruc extends StatelessWidget {
  final Widget body;
  final String day;
  const PageStruc({
    Key? key,
    required this.body,
    required this.day,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      drawer: MyDrawer(),
      appBar: AppBar(
        title: "28 Days Of UI/UX".text.xl3.fontFamily('Potta One').make(),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 10,
        actions: ['Day${day}'.text.xl2.fontFamily('Rampart One').make().centered().px32()],
      ),
      body: body,
    );
  }
}
