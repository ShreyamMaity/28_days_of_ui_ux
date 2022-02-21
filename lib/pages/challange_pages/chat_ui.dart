import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:u_design_i_dare/widgets/drawer.dart';

class ChatUI extends StatelessWidget {
  const ChatUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      body: SingleChildScrollView(
        child: Container(
          height: context.screenHeight,
          width: context.screenWidth,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                const Color(0xFFCC3BFF),
                const Color(0xFF8FC8E9).withOpacity(.804),
                const Color(0xFFBD7CDC).withOpacity(.56),
                const Color(0xFF2AFFCC).withOpacity(.38),
              ])),
          child: Center(
            child: Stack(
              children: [
                Container(
                  height: 926,
                  width: 428,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          const Color(0xFF43ECF6),
                          const Color(0xFFB8BDC2).withOpacity(.69),
                          const Color(0xFFFF41BE).withOpacity(.63),
                          const Color(0xFFFA0CFF).withOpacity(.52),
                        ]),
                    borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFF000000).withOpacity(.25),
                        blurRadius: 18,
                        spreadRadius: 14,
                        offset: const Offset(0, 6),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(height: 123),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: ChatHeads(
                          text: 'Hi !',
                          time: '10:57 pm',
                          isFrom: true,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 280, right: 8.0),
                        child: ChatHeads(
                          text: 'Hello',
                          time: '10:59 pm',
                          isFrom: false,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: ChatHeads(
                          text: '. . .',
                          time: '',
                          isFrom: true,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 0,
                  child: Container(
                    width: 428,
                    height: 109,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0)),
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            const Color(0xFF6BDEE7).withOpacity(.63),
                            const Color(0xFF00DD3E).withOpacity(.40),
                          ]),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF000000).withOpacity(.25),
                          blurRadius: 15,
                          spreadRadius: 0,
                          offset: const Offset(0, 7),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Icon(
                          CupertinoIcons.back,
                          size: 40,
                        ),
                        Image.asset(
                          "assets/dp.png",
                          height: 62,
                          width: 62,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            "Kelvin Mor"
                                .text
                                .color(const Color(0xFF12235E))
                                .textStyle(const TextStyle(fontSize: 35))
                                .fontFamily('Rasa')
                                .make(),
                            "Typing..."
                                .text
                                .color(const Color(0xFF131B38).withOpacity(.73))
                                .textStyle(const TextStyle(fontSize: 19))
                                .fontFamily('Rasa')
                                .make(),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.call,
                          size: 30,
                          color: const Color(0xFF000000).withOpacity(.69),
                        ),
                        Icon(
                          Icons.video_call,
                          size: 35,
                          color: const Color(0xFF000000).withOpacity(.69),
                        ),
                        Icon(
                          Icons.more_vert,
                          size: 35,
                          color: const Color(0xFF000000).withOpacity(.69),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 65,
                  left: 5,
                  child: Row(
                    children: [
                      Container(
                        height: 53,
                        width: 366,
                        decoration: BoxDecoration(
                          color: const Color(0xFFC4C4C4).withOpacity(.61),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(37.0)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(CupertinoIcons.smiley,
                                    size: 40,
                                    color: const Color(0xFF000000)
                                        .withOpacity(.56)),
                                const SizedBox(
                                  width: 10,
                                ),
                                "Message"
                                    .text
                                    .color(const Color(0xFF131B38)
                                        .withOpacity(.47))
                                    .textStyle(const TextStyle(fontSize: 27))
                                    .fontFamily('Rasa')
                                    .make(),
                              ],
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Transform.rotate(
                                  angle: 315.25 * pi / 180,
                                  child: Icon(Icons.attach_file_rounded,
                                      size: 40,
                                      color: const Color(0xFF000000)
                                          .withOpacity(.56)),
                                ),
                                Icon(Icons.mic,
                                    size: 40,
                                    color: const Color(0xFF000000)
                                        .withOpacity(.56)),
                                Icon(Icons.camera_alt,
                                    size: 40,
                                    color: const Color(0xFF000000)
                                        .withOpacity(.56)),
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.send,
                        size: 50,
                        color: const Color(0xFF121212).withOpacity(.73),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    bottom: 0,
                    child: Container(
                      width: 428,
                      height: 58,
                      decoration: BoxDecoration(
                        color: const Color(0xFFE7D7D7).withOpacity(.81),
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Transform.rotate(
                            angle: pi,
                            child: Icon(Icons.play_arrow,
                                size: 48,
                                color:
                                    const Color(0xFF0A0A0A).withOpacity(.30)),
                          ),
                          Icon(Icons.circle,
                              size: 32,
                              color: const Color(0xFF0A0A0A).withOpacity(.30)),
                          Icon(Icons.square,
                              size: 30,
                              color: const Color(0xFF0A0A0A).withOpacity(.30)),
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ChatHeads extends StatelessWidget {
  final String text;
  final String time;
  final bool isFrom;
  const ChatHeads({
    Key? key,
    required this.text,
    required this.time,
    required this.isFrom,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isFrom
        ? Stack(
            children: [
              Image.asset("assets/from-chat.png"),
              Positioned(
                top: 6,
                left: 50,
                child: text.text
                    .color(const Color(0xFF000000).withOpacity(.69))
                    .textStyle(const TextStyle(fontSize: 26))
                    .fontFamily('Rasa')
                    .bold
                    .make(),
              ),
              Positioned(
                top: 29,
                left: 90,
                child: time.text
                    .color(const Color(0xFF000000).withOpacity(.47))
                    .textStyle(const TextStyle(fontSize: 12))
                    .fontFamily('Rasa')
                    .bold
                    .make(),
              )
            ],
          )
        : Stack(
            children: [
              Image.asset("assets/to-chat.png"),
              Positioned(
                top: 6,
                left: 20,
                child: text.text
                    .color(const Color(0xFF000000).withOpacity(.69))
                    .textStyle(const TextStyle(fontSize: 26))
                    .fontFamily('Rasa')
                    .bold
                    .make(),
              ),
              Positioned(
                top: 29,
                left: 70,
                child: time.text
                    .color(const Color(0xFF000000).withOpacity(.47))
                    .textStyle(const TextStyle(fontSize: 12))
                    .fontFamily('Rasa')
                    .bold
                    .make(),
              )
            ],
          );
  }
}
