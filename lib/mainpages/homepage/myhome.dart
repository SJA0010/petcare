import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petcare/Expenses/expanses.dart';
import 'package:petcare/Remainders/Reminders1.dart';
import 'package:petcare/Remainders/RemindersScreen.dart';
import 'package:petcare/calendar/CalendarScreen.dart';
import 'package:petcare/charts/Expense.dart';
import 'package:petcare/charts/Prediction_system.dart';
import 'package:petcare/mainpages/homepage/healthhistory.dart';
import 'package:petcare/mainpages/homepage/helpdesk.dart';
import 'package:petcare/mainpages/homepage/review.dart';
import 'package:petcare/profile.dart/profile1.dart';

class Myhomescreen extends StatefulWidget {
  const Myhomescreen({super.key});

  @override
  State<Myhomescreen> createState() => _MyhomescreenState();
}

class _MyhomescreenState extends State<Myhomescreen> {
  @override
  var height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: height,
          width: width,
          decoration: const BoxDecoration(
              // image: DecorationImage(
              //     image: AssetImage(
              //       "assets/background3.jpg",
              //     ),
              //     fit: BoxFit.contain)),
              ),
          child: Stack(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: height! * 0.03,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: height! * 0.25,
                  width: width,
                  color: const Color.fromRGBO(255, 113, 70, 0.789),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  height: height! * 0.12,
                  width: width! * 0.94,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: width! * 0.02,
                      ),
                    ],
                  ),
                ),
              ),

              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  height: height! * 0.3,
                  width: width! * 0.13,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: height! * 0.12,
                        width: width! * 0.13,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(108, 70, 203, 196),
                            shape: BoxShape.circle),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: height! * 0.16,
                  width: width! * 0.25,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(108, 41, 124, 120),
                      borderRadius: BorderRadius.only(
                          // topLeft: Radius.circular(radius),
                          bottomLeft: Radius.circular(10000),
                          bottomRight: Radius.circular(50))),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: SizedBox(
                  height: height! * 0.1,
                  width: width! * 0.45,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: height! * 0.08,
                        width: width! * 0.3,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(105, 22, 116, 111),
                            borderRadius: BorderRadius.only(
                                //topRight: ,
                                topLeft: Radius.circular(100),
                                bottomLeft: Radius.circular(10000),
                                bottomRight: Radius.circular(10000))),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  height: height! * 0.135,
                  width: width! * 0.94,
                  //  color: Colors.red,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Helpscreen(),
                              ));
                        },
                        child: Container(
                          height: height! * 0.12,
                          width: width! * 0.1,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(108, 41, 124, 120),
                              shape: BoxShape.circle),
                          child: const Icon(
                            Icons.question_mark_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width! * 0.02,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Profile1(),
                              ));
                        },
                        child: Container(
                          height: height! * 0.12,
                          width: width! * 0.1,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(108, 33, 115, 111),
                              shape: BoxShape.circle),
                          child: const Icon(
                            Icons.person_outline,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              //  dsjnfjsbk
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: height! * 0.79,
                  width: width,
                  //color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // SizedBox(
                      //   height: height! * 0.1,
                      // ),
                      Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Container(
                          height: height! * 0.31,
                          width: width! * 0.9,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(300),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: height! * 0.19,
                                width: width,
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30),
                                    ),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage("assets/dots.png"))),
                              ),
                              Container(
                                height: height! * 0.12,
                                width: width,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(30),
                                    bottomRight: Radius.circular(30),
                                  ),
                                  color: Color.fromRGBO(255, 170, 144, 1),
                                ),
                                child: Center(
                                  child: Text(
                                    "Hello USER!",
                                    style: GoogleFonts.coiny(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: width! * 0.065),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height! * 0.015,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const PredictionSystem(),
                              ));
                        },
                        child: Container(
                          height: height! * 0.11,
                          width: width! * 0.87,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(248, 176, 155, 1),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              "Prediction System",
                              style: GoogleFonts.coiny(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: width! * 0.065),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height! * 0.02,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const Expensehistoryscreen(),
                              ));
                        },
                        child: Container(
                          height: height! * 0.08,
                          width: width! * 0.87,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(251, 190, 172, 1),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              "MY Expenses",
                              style: GoogleFonts.coiny(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: width! * 0.065),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height! * 0.013,
                      ),
                      Container(
                        height: height! * 0.22,
                        width: width! * 0.87,
                        decoration: BoxDecoration(
                          //color: Color.fromRGBO(255, 209, 195, 1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const Reviewscreen(),
                                    ));
                              },
                              child: Container(
                                height: height! * 0.22,
                                width: width! * 0.4,
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(255, 216, 203, 1),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text(
                                    "Add \n Review",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.coiny(
                                        color: const Color.fromRGBO(
                                            255, 117, 72, 1),
                                        fontWeight: FontWeight.w500,
                                        fontSize: width! * 0.065),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height! * 0.22,
                              width: width! * 0.45,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const Reminders1(),
                                          ));
                                    },
                                    child: Container(
                                      height: height! * 0.1,
                                      width: width! * 0.4,
                                      decoration: BoxDecoration(
                                        color: const Color.fromRGBO(
                                            255, 216, 203, 1),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Remainder",
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.coiny(
                                              color: const Color.fromRGBO(
                                                  255, 117, 72, 1),
                                              fontWeight: FontWeight.w500,
                                              fontSize: width! * 0.06),
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const CalendarScreen(),
                                          ));
                                    },
                                    child: Container(
                                      height: height! * 0.1,
                                      width: width! * 0.4,
                                      decoration: BoxDecoration(
                                        color: const Color.fromRGBO(
                                            255, 216, 203, 1),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Calendar",
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.coiny(
                                              color: const Color.fromRGBO(
                                                  255, 117, 72, 1),
                                              fontWeight: FontWeight.w500,
                                              fontSize: width! * 0.06),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        // child: Center(
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
