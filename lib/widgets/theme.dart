// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme{
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.poppins().fontFamily,
        cardColor: Colors.white,
        canvasColor: creamColor,
        buttonColor: darkBluishColor,
        accentColor: darkBluishColor,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black), 
          toolbarTextStyle: Theme.of(context).textTheme.bodyText2, 
          titleTextStyle: Theme.of(context).textTheme.headline6,
        )
      );



       //colors
      static Color creamColor = const Color(0xfff5f5f5);
      static Color darkCreamColor = Vx.gray900;
      static Color darkBluishColor = const Color(0xff403b58);
      static Color lightBluishColor = Vx.indigo500;
}