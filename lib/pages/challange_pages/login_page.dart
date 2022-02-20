// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:u_design_i_dare/pages/PageStruc.dart';
import 'package:u_design_i_dare/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageStruc(
          day: '1',
          body: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(60.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 770,
                      height: 506,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(41, 0, 0, 0),
                              offset: Offset(-10, -8),
                              blurRadius: 4,
                            ),
                            BoxShadow(
                              color: Color.fromARGB(41, 0, 0, 0),
                              offset: Offset(10, 8),
                              blurRadius: 4,
                            ),
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/logo.png"),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 100.0, right: 100.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                hintText: "Enter Mail ID",
                                labelText: "Email",
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'email is required';
                                }
                                return null;
                              },
                              onChanged: (value) {},
                              keyboardType: TextInputType.emailAddress,
                            ),
                          ),
                          SizedBox(height: 20),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 100.0, right: 100.0),
                            child: TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                hintText: "Enter Password",
                                labelText: "Password",
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Password is required';
                                } else if (value.length < 6) {
                                  return 'Password must be at least 6 characters';
                                }
                                return null;
                              },
                              onChanged: (value) {},
                              keyboardType: TextInputType.visiblePassword,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          InkWell(
                              onTap: () {Navigator.pushNamed(context, MyRoutes.forgotPassRoute);},
                              child: "Forgot Password?".text.gray500.xl2.make()),
                          SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                              fixedSize: MaterialStateProperty.all(
                                const Size(164, 71.07),
                              ),
                              backgroundColor: MaterialStateProperty.all(
                                Color(0xFF8D7F8C),
                              ),
                              elevation: MaterialStateProperty.all(10),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, MyRoutes.confirmRoute);
                            },
                            child: "Log In"
                                .text
                                .white
                                .xl2
                                .fontFamily('Rammetto One')
                                .make(),
                          ),
                        ],
                      ),
                    ),
                    "OR".text.black.xl.fontFamily('Rock Salt').make(),
                    Container(
                      width: 770,
                      height: 113,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(41, 0, 0, 0),
                              offset: Offset(-10, -8),
                              blurRadius: 4,
                            ),
                            BoxShadow(
                              color: Color.fromARGB(41, 0, 0, 0),
                              offset: Offset(10, 8),
                              blurRadius: 4,
                            ),
                          ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                              onTap: () {},
                              child: Image.asset("assets/facebook.png")),
                          InkWell(
                              onTap: () {}, child: Image.asset("assets/insta.png")),
                          InkWell(
                              onTap: () {},
                              child: Image.asset("assets/twitter.png")),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 90,
          right: 0,
          child: Material(
            child: Container(
              width: 250,
              height: 89,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadiusDirectional.only(
                      topStart: Radius.circular(20),
                      bottomStart: Radius.circular(20)),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(41, 0, 0, 0),
                      offset: Offset(-6, -5),
                      blurRadius: 4,
                    ),
                    BoxShadow(
                      color: Color.fromARGB(41, 0, 0, 0),
                      offset: Offset(5, 7),
                      blurRadius: 4,
                    ),
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  "Don't have an account?"
                      .text
                      .black
                      .size(10)
                      .fontFamily('Poppins')
                      .make(),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      elevation: MaterialStateProperty.all(0),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.day1);
                    },
                    child: "Sign Up Here"
                        .text
                        .bold
                        .size(27)
                        .color(Color.fromARGB(255, 79, 30, 76))
                        .fontFamily('Rammetto One')
                        .make(),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
