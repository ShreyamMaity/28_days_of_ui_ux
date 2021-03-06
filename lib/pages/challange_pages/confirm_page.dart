// ignore_for_file: prefer_const_constructors, unused_element, unnecessary_null_comparison
import 'package:flutter/material.dart';
import 'package:u_design_i_dare/pages/PageStruc.dart';
import 'package:u_design_i_dare/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';

class ConfirmPage extends StatelessWidget {
  const ConfirmPage({Key? key}) : super(key: key);

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
                  "Enter OTP recieved in mail".text.fontFamily("Rasa").black.make(),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 100.0, right: 100.0),
                    child: PinInputTextField(
                      pinLength: 6,
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
                        "Confirm".text.white.xl2.fontFamily('Rammetto One').make(),
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
