import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

class Verifyscreen extends StatefulWidget {
  const Verifyscreen({super.key});

  @override
  State<Verifyscreen> createState() => _VerifyscreenState();
}

class _VerifyscreenState extends State<Verifyscreen> {
  @override
  bool ischecked = false;
  String? verId;
  TextEditingController otpController = TextEditingController();
  var height, width;
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
        //  resizeToAvoidBottomInset: true,
        body: Stack(
      children: [
        Align(
          alignment: Alignment.topRight,
          child: Container(
            height: height! * 0.16,
            width: width! * 0.25,
            decoration: BoxDecoration(
                color: Color.fromARGB(192, 253, 88, 38),
                borderRadius: BorderRadius.only(
                    // topLeft: Radius.circular(radius),
                    bottomLeft: Radius.circular(10000),
                    bottomRight: Radius.circular(50))),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Container(
            height: height! * 0.1,
            width: width! * 0.45,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: height! * 0.08,
                  width: width! * 0.3,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(171, 135, 255, 249),
                      borderRadius: BorderRadius.only(
                          //topRight: ,
                          topLeft: Radius.circular(100),
                          bottomLeft: Radius.circular(10000),
                          bottomRight: Radius.circular(10000))),
                )
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Container(
            height: height! * 0.14,
            width: width! * 0.3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: height! * 0.13,
                  width: width! * 0.17,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(192, 253, 88, 38),
                  ),
                )
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Container(
            height: height! * 0.1,
            width: width! * 0.35,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: height! * 0.05,
                  width: width! * 0.1,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF95E8E4),
                  ),
                )
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                  //color: Colors.white,
                  ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: height! * 0.25,
                  ),
                  Text(
                    "Please enter the PIN code below to proceed",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.coiny(
                      fontSize: width! * 0.035,
                      color: Color.fromRGBO(255, 131, 93, 1.0),
                    ),
                  ),
                  SizedBox(
                    height: height! * 0.065,
                  ),
                  Container(
                    height: height! * 0.12,
                    width: width!,
                    //  margin: EdgeInsets.symmetric(horizontal: 100.0),
                    child: Pinput(
                      keyboardType: TextInputType.phone,
                      controller: otpController,
                      length: 5,
                      forceErrorState: true,
                      pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                    ),
                  ),
                  SizedBox(
                    height: height! * 0.05,
                  ),
                  Container(
                    height: height * 0.07,
                    width: width * 0.55,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 131, 93, 1.0),
                        borderRadius: BorderRadius.circular(16)),
                    child: Center(
                        child: Text(
                      "Verify",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontSize: width! * 0.045),
                    )),
                  ),
                  SizedBox(
                    height: height! * 0.06,
                  ),
                  Container(
                    height: height! * 0.13,
                    width: width! * 0.85,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        color: Colors.grey.shade100),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: width! * 0.02,
                        ),
                        Checkbox(
                          value: ischecked,
                          activeColor: Colors.blue,
                          tristate: true,
                          onChanged: (newBool) {
                            setState(() {
                              // ischecked = newBool!;
                            });
                          },
                        ),
                        SizedBox(
                          width: width! * 0.0,
                        ),
                        Text(
                          "I'm not a robot ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: width! * 0.04,
                            color: Color.fromRGBO(99, 99, 99, 1),
                          ),
                        ),
                        SizedBox(
                          width: width! * 0.12,
                        ),
                        Container(
                          height: height! * 0.15,
                          width: width! * 0.3,
                          // color: Color.fromARGB(255, 162, 36, 36),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: height! * 0.1,
                                width: width,
                                child: SvgPicture.asset(
                                  "assets/gre.svg",
                                  height: height! * 1.2,
                                  width: width! * 1.3,
                                ),
                                //    image: DecorationImage(image: AssetImage("assets/cat.png"))
                              ),
                              Text(
                                "Privacy Terms",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 107, 107, 107),
                                    fontSize: width! * 0.03),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
