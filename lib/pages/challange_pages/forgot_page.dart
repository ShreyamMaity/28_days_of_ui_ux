// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:u_design_i_dare/pages/PageStruc.dart';
import 'package:velocity_x/velocity_x.dart';

class ForgotPage extends StatelessWidget {
  const ForgotPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageStruc(
      day: '1',
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(60.0),
            child: Container(
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
                    height: 40,
                  ),
                  "Enter Email to recieve password reset link."
                      .text
                      .gray500
                      .fontFamily('Rasa')
                      .xl2
                      .make(),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 100.0, right: 100.0),
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
                  SizedBox(
                    height: 40,
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
                    onPressed: () {},
                    child:
                        "Sign Up".text.white.xl2.fontFamily('Rammetto One').make(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
