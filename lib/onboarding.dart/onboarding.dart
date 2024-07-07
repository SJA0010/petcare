import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petcare/homepage/homepage.dart';
import 'package:petcare/loginsignup/loading1.dart';
import 'package:petcare/loginsignup/signuplogin.dart';
import 'package:petcare/onboarding.dart/page1.dart';
import 'package:petcare/onboarding.dart/page2.dart';
import 'package:petcare/onboarding.dart/page3.dart';

class Onboardingscreens extends StatefulWidget {
  const Onboardingscreens({super.key});

  @override
  State<Onboardingscreens> createState() => _OnboardingscreensState();
}

class _OnboardingscreensState extends State<Onboardingscreens> {
  @override
  PageController pageController = PageController();
  int currentPage = 0;
  var height, width;
  int index = 0;
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: height!,
              width: width,
              child: PageView(
                controller: pageController,
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                children: [
                  page1(),
                  page2(),
                  page3(),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: height! * 0.2,
              width: width! * 0.35,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                      onTap: () {
                        pageController.jumpToPage(0);
                      },
                      child: Container(
                        height: height * 0.015,
                        width: width * 0.07,
                        decoration: BoxDecoration(
                            color: currentPage == 0
                                ? Color.fromRGBO(255, 131, 93, 1.0)
                                : Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.grey,
                            )),
                      )),
                  InkWell(
                      onTap: () {
                        pageController.jumpToPage(1);
                      },
                      child: Container(
                        height: height * 0.015,
                        width: width * 0.07,
                        decoration: BoxDecoration(
                            color: currentPage == 1
                                ? Color.fromRGBO(255, 131, 93, 1.0)
                                : Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.grey,
                            )),
                      )),
                  InkWell(
                      onTap: () {
                        pageController.jumpToPage(2);
                      },
                      child: Container(
                        height: height * 0.015,
                        width: width * 0.07,
                        decoration: BoxDecoration(
                            color: currentPage == 2
                                ? Color.fromRGBO(255, 131, 93, 1.0)
                                : Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.grey,
                            )),
                      )),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: height! * 0.15,
              width: width,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    (currentPage <= 1)
                        ? Container(
                            height: height * 0.07,
                            width: width * 0.9,
                            decoration: BoxDecoration(
                                //  color: Color.fromRGBO(255, 131, 93, 1.0),
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    if (currentPage == 2) {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => signup_login(),
                                        ),
                                      );
                                    } else if (currentPage < 2) {
                                      pageController.nextPage(
                                        duration: Duration(milliseconds: 300),
                                        curve: Curves.easeInOut,
                                      );
                                    }
                                  },
                                  child: Container(
                                    height: height * 0.07,
                                    width: width * 0.58,
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromRGBO(255, 131, 93, 1.0),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: width! * 0.19,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(bottom: 10),
                                          child: Text(
                                            "NEXT",
                                            style: GoogleFonts.coiny(
                                              fontSize: width! * 0.055,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: width! * 0.12,
                                        ),
                                        Icon(
                                          Icons.arrow_forward_ios,
                                          size: width! * 0.055,
                                          color: Colors.white,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Homescreen(),
                                        ));
                                  },
                                  child: Container(
                                    height: height * 0.05,
                                    width: width * 0.3,
                                    child: Center(
                                        child: Text(
                                      "Skip",
                                      style: GoogleFonts.coiny(
                                          fontWeight: FontWeight.w500,
                                          color:
                                              Color.fromRGBO(255, 131, 93, 1.0),
                                          fontSize: width! * 0.055),
                                    )),
                                  ),
                                )
                              ],
                            ))
                        : InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Loading(),
                              ));
                            },
                            child: Container(
                              height: height * 0.07,
                              width: width * 0.58,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(255, 131, 93, 1.0),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: width! * 0.03,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 10),
                                    child: Text(
                                      "GET STARTED",
                                      style: GoogleFonts.coiny(
                                        fontSize: width! * 0.055,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: width! * 0.055,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                          ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
