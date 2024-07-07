import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:petcare/loginsignup/login.dart';
import 'package:petcare/loginsignup/signup.dart';

class signup_login extends StatefulWidget {
  const signup_login({super.key});

  @override
  State<signup_login> createState() => _signup_loginState();
}

class _signup_loginState extends State<signup_login> {
  var height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(children: [
        Align(
          alignment: Alignment.topRight,
          child: Container(
            height: height! * 0.16,
            width: width! * 0.52,
            decoration: const BoxDecoration(
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
            decoration: const BoxDecoration(
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
                decoration: const BoxDecoration(
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
                decoration: const BoxDecoration(
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
            // color: Colors.white,
            decoration: const BoxDecoration(
                // color: Colors.white,
                ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: height * 0.15,
                  width: width * 0.375,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/1.png",
                          ),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  height: height * 0.06,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const sign_up(),
                        ));
                  },
                  child: Container(
                    height: height * 0.055,
                    width: width * 0.45,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 131, 93, 1.0),
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                        child: Text(
                      "Sign uP",
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,

                        fontSize: width! * 0.044,
                        //  fontWeight:FontWeight.bold,
                      ),
                    )),
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Log_in(),
                        ));
                  },
                  child: Container(
                    height: height * 0.055,
                    width: width * 0.45,
                    decoration: BoxDecoration(
                        color: const Color(0xFF95E8E4), // Equivalent to #FF835D

                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                        child: Text(
                      "Log in",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontSize: width! * 0.044),
                    )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
