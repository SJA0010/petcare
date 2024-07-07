import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Chatbotscreen extends StatefulWidget {
  const Chatbotscreen({super.key});

  @override
  State<Chatbotscreen> createState() => _ChatbotscreenState();
}

class _ChatbotscreenState extends State<Chatbotscreen> {
  @override
  var height, width;
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: height! * 0.16,
              width: width! * 0.52,
              decoration: BoxDecoration(
                  color: Color(0xFF95E8E4),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(5000),
                      bottomLeft: Radius.circular(9000),
                      topLeft: Radius.circular(10))),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: height! * 0.25,
              width: width! * 0.6,
              decoration: BoxDecoration(
                  color: Color.fromARGB(192, 253, 88, 38),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(300),
                      bottomRight: Radius.circular(1000),
                      topRight: Radius.circular(10))),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: height! * 0.75,
              width: width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: height! * 0.02,
                  ),
                  Text(
                    "Wed 8:21 AM",
                    style: GoogleFonts.fredoka(
                        //foreground: Paint()..color = Colors.white..style = PaintingStyle.stroke..strokeWidth = 1.0,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 124, 124, 124),
                        fontSize: width * 0.035),
                  ),
                  SizedBox(
                    height: height! * 0.02,
                  ),
                  Expanded(
                      child: SingleChildScrollView(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: height! * 0.12,
                            width: width!,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: height! * 0.05,
                                  width: width! * 0.1,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 234, 233, 233),
                                      shape: BoxShape.circle),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                            height: height! * 0.025,
                                            width: width! * 0.06,
                                            child: SvgPicture.asset(
                                                "assets/chatbot.svg"))
                                      ]),
                                  //    image: DecorationImage(image: AssetImage("assets/cat.png"))
                                ),
                                SizedBox(
                                  width: width! * 0.03,
                                ),
                                Container(
                                    height: height! * 0.11,
                                    width: width * 0.8,
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(220, 237, 237, 237),
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(30),
                                            bottomLeft: Radius.circular(30),
                                            bottomRight: Radius.circular(30))),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: height! * 0.07,
                                          width: width! * 0.73,
                                          child: Text(
                                            'Hello, I am PetBot!. How can I help you?',
                                            textAlign: TextAlign.left,
                                            style: GoogleFonts.fredoka(
                                                //foreground: Paint()..color = Colors.white..style = PaintingStyle.stroke..strokeWidth = 1.0,
                                                fontWeight: FontWeight.w400,
                                                color: Color.fromARGB(
                                                    255, 91, 91, 91),
                                                fontSize: width * 0.045),
                                          ),
                                        ),
                                      ],
                                    )),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: height! * 0.01,
                          ),
                          Container(
                            height: height! * 0.1,
                            width: width!,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: height! * 0.05,
                                  width: width! * 0.1,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 234, 233, 233),
                                      shape: BoxShape.circle),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                            height: height! * 0.025,
                                            width: width! * 0.06,
                                            child: SvgPicture.asset(
                                                "assets/chatbot.svg"))
                                      ]),
                                  //    image: DecorationImage(image: AssetImage("assets/cat.png"))
                                ),
                                SizedBox(
                                  width: width! * 0.03,
                                ),
                                Container(
                                    height: height! * 0.08,
                                    width: width * 0.8,
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(220, 237, 237, 237),
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(30),
                                            bottomLeft: Radius.circular(30),
                                            bottomRight: Radius.circular(30))),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: height! * 0.05,
                                          width: width! * 0.73,
                                          child: Text(
                                            'Please tell yor Pet type',
                                            textAlign: TextAlign.left,
                                            style: GoogleFonts.fredoka(
                                                //foreground: Paint()..color = Colors.white..style = PaintingStyle.stroke..strokeWidth = 1.0,
                                                fontWeight: FontWeight.w400,
                                                color: Color.fromARGB(
                                                    255, 91, 91, 91),
                                                fontSize: width * 0.045),
                                          ),
                                        ),
                                      ],
                                    )),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: height! * 0.05,
                          ),
                          Container(
                            height: height! * 0.08,
                            width: width! * 0.95,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      height: height! * 0.08,
                                      width: width * 0.8,
                                      decoration: BoxDecoration(
                                          color: Color.fromARGB(
                                              104, 175, 255, 251),
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              bottomLeft: Radius.circular(30),
                                              bottomRight:
                                                  Radius.circular(30))),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: height! * 0.04,
                                            width: width! * 0.73,
                                            child: Text(
                                              'Show me Pet name and Suggestions.',
                                              textAlign: TextAlign.left,
                                              style: GoogleFonts.fredoka(
                                                  //foreground: Paint()..color = Colors.white..style = PaintingStyle.stroke..strokeWidth = 1.0,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xff064E57),
                                                  fontSize: width * 0.042),
                                            ),
                                          ),
                                        ],
                                      )),
                                ]),
                          ),
                          SizedBox(height: height! * 0.04),
                          Container(
                            height: height! * 0.12,
                            width: width!,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: height! * 0.05,
                                  width: width! * 0.1,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 234, 233, 233),
                                      shape: BoxShape.circle),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                            height: height! * 0.025,
                                            width: width! * 0.06,
                                            child: SvgPicture.asset(
                                                "assets/chatbot.svg"))
                                      ]),
                                  //    image: DecorationImage(image: AssetImage("assets/cat.png"))
                                ),
                                SizedBox(
                                  width: width! * 0.03,
                                ),
                                Container(
                                    height: height! * 0.11,
                                    width: width * 0.8,
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(220, 237, 237, 237),
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(30),
                                            bottomLeft: Radius.circular(30),
                                            bottomRight: Radius.circular(30))),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: height! * 0.07,
                                          width: width! * 0.73,
                                          child: Text(
                                            'Stormi,Grey, Jack ,Diamond,Lilly, Baby, Fluer,Bambi,Flower',
                                            textAlign: TextAlign.left,
                                            style: GoogleFonts.fredoka(
                                                //foreground: Paint()..color = Colors.white..style = PaintingStyle.stroke..strokeWidth = 1.0,
                                                fontWeight: FontWeight.w400,
                                                color: Color.fromARGB(
                                                    255, 91, 91, 91),
                                                fontSize: width * 0.045),
                                          ),
                                        ),
                                      ],
                                    )),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: height! * 0.08,
                          ),
                          SizedBox(
                            height: height * 0.07,
                            width: width,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: width * 0.03, right: width * 0.01),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromARGB(83, 175, 175, 178),
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      child: Padding(
                                        padding:
                                            EdgeInsets.only(left: width * 0.02),
                                        child: Center(
                                          child: TextField(
                                            cursorColor: Color.fromARGB(
                                                137, 255, 255, 255),
                                            // controller: msgController,
                                            maxLines: 3,
                                            style: GoogleFonts.ibmPlexSans(
                                                color: Colors.white,
                                                fontSize: width * 0.04),
                                            decoration: InputDecoration(
                                                prefixIcon: Icon(
                                                  Icons.emoji_emotions_outlined,
                                                  color: Color.fromARGB(
                                                      255, 91, 91, 91),
                                                  size: width * 0.05,
                                                ),
                                                suffix: Container(
                                                  height: height * 0.05,
                                                  width: width * 0.1,
                                                  // color: Colors.red,
                                                ),
                                                hintText: "Message...",
                                                hintStyle: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 91, 91, 91),
                                                    fontSize: width * 0.039),
                                                border: InputBorder.none),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  InkWell(
                                      onTap: () {},
                                      child: Container(
                                        height: height,
                                        width: width * 0.14,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color.fromARGB(
                                              255, 167, 246, 242),
                                        ),
                                        child: const Center(
                                          child: Icon(
                                            Icons.send,
                                            color: Color(0xff064E57),
                                          ),
                                        ),
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ))
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: height * 0.15,
              width: width! * 0.5,
              //  color: Color.fromARGB(255, 121, 30, 219),
              child: Center(
                child: Text(
                  "Chatbot",
                  style: GoogleFonts.coiny(
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                      fontSize: width * 0.07),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
