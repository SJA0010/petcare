import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import 'package:petcare/homepage/homepage.dart';
import 'package:petcare/loginsignup/signup.dart';
import 'package:petcare/loginsignup/signuplogin.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void initState() {
    Future.delayed(Duration(seconds: 3), (() {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => signup_login(),
          ));
    }));

    // TODO: implement initState
    super.initState();
  }

  var height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
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
              alignment: Alignment.bottomRight,
              child: Container(
                  height: height! * 0.1,
                  width: width! * 0.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(100),
                      topLeft: Radius.circular(5000),
                      // bottomRight: Radius.circular(300)
                    ),
                    color: Color.fromARGB(192, 253, 88, 38),
                  ))),
          Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                  height: height! * 0.1,
                  width: width! * 0.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(100),
                      topRight: Radius.circular(5000),
                      // bottomRight: Radius.circular(300)
                    ),
                    color: Color.fromARGB(209, 149, 232, 228),
                  ))),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: height,
              width: width,
              decoration: BoxDecoration(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: height * 0.3,
                    width: width * 0.6,
                    decoration: BoxDecoration(
                        // color: Colors.red,
                        image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage("assets/paw.png"))),
                    //  child: SvgPicture.asset("assets/paw.svg"),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),

                  Container(
                      height: height * 0.05,
                      width: width * 0.42,
                      decoration: BoxDecoration(),
                      child: AnimatedTextKit(animatedTexts: [
                        WavyAnimatedText(
                          "LOADING ...",
                          textStyle: GoogleFonts.coiny(
                            fontWeight: FontWeight.w600,
                            fontSize: width * 0.062,
                            color: Color.fromRGBO(255, 131, 93, 1.0),
                          ),
                        ),
                      ]))
                  // Container(
                  //   height: height * 0.05,
                  //   width: width * 0.4,
                  //   decoration: BoxDecoration(
                  //       // Equivalent to #FF835D

                  //       borderRadius: BorderRadius.circular(20)),
                  //   child: Center(
                  //       child: Text(
                  //     "Loading ...",
                  //     style: TextStyle(
                  //         fontWeight: FontWeight.bold,
                  //         color: Color.fromRGBO(255, 131, 93, 1.0),
                  //         fontSize: 25),
                  //   )),
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
