import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:u_design_i_dare/pages/challange_pages/chat_ui.dart';
import 'package:u_design_i_dare/pages/challange_pages/confirm_page.dart';
import 'package:u_design_i_dare/pages/challange_pages/day1.dart';
import 'package:u_design_i_dare/pages/challange_pages/forgot_page.dart';
import 'package:u_design_i_dare/pages/challange_pages/login_page.dart';
import 'package:u_design_i_dare/pages/landingPage.dart';
import 'package:u_design_i_dare/utils/routes.dart';
import 'package:u_design_i_dare/widgets/theme.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      builder: (context, widget) => ResponsiveWrapper.builder(
          BouncingScrollWrapper.builder(context, widget!),
          maxWidth: context.screenWidth,
          minWidth: context.screenHeight,
          defaultScale: true,
          breakpoints: [
            const ResponsiveBreakpoint.resize(480, name: MOBILE),
            const ResponsiveBreakpoint.autoScale(800, name: TABLET),
            const ResponsiveBreakpoint.resize(1000, name: DESKTOP),
          ],
          background: Container(color: const Color(0xFFF5F5F5))),
          title: "28 Days Of UI/UX",
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      initialRoute: "/",
      routes: {
        '/': (context) => const LandingPage(),
        MyRoutes.day1: (context) => const Day1(),
        MyRoutes.loginRoute: (context) => const LoginPage(),
        MyRoutes.forgotPassRoute: (context) => const ForgotPage(),
        MyRoutes.confirmRoute: (context) => const ConfirmPage(),
        MyRoutes.day2: (context) => const ChatUI(),
      },
    );
  }
}
