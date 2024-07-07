import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petcare/Apptheme/apptheme.dart';
import 'package:petcare/painter/painterTop.dart';

//make by Subhan Abbasi 26
class Expenses3 extends StatefulWidget {
  const Expenses3({super.key});

  @override
  State<Expenses3> createState() => _Expenses3State();
}

class _Expenses3State extends State<Expenses3> {
  var width, height;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      color: Colors.white,
      height: height,
      width: width,
      child: CustomPaint(
          painter: PainterTop(),
          child: Column(
            children: [
              Apptheme.appBar("Expense", height, context, width),
              SizedBox(
                height: height * 0.71,
                width: width * 1,
                // color: Colors.amber,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Container(
                      height: height * 0.07,
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 1, color: Colors.grey))),
                      child: Row(
                        children: [
                          SizedBox(
                            width: width * 0.03,
                          ),
                          const Icon(
                            Icons.date_range_outlined,
                            size: 40,
                          ),
                          const Text(
                            textAlign: TextAlign.center,
                            "     Date",
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            width: width * 0.3,
                          ),
                          Container(
                            height: height * 0.05,
                            width: width * 0.28,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              border: Border.all(
                                color: Apptheme.pinkcolor,
                                width: 2,
                              ),
                            ),
                            child: Center(
                                child: Text(
                              "12/08/2023",
                              style: TextStyle(color: Apptheme.pinkcolor),
                            )),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: height * 0.07,
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 1, color: Colors.grey))),
                      child: Row(
                        children: [
                          SizedBox(
                            width: width * 0.03,
                          ),
                          const Icon(
                            Icons.battery_charging_full_rounded,
                            size: 40,
                          ),
                          const Text(
                            textAlign: TextAlign.center,
                            "     Basic Supplies",
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            width: width * 0.20,
                          ),
                          Container(
                            alignment: Alignment.center,
                            // height: height * 0.055,
                            width: width * 0.1,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(27)),
                            child: Text(
                              "100",
                              style: GoogleFonts.coiny(fontSize: 15),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            // height: height * 0.055,
                            width: width * 0.15,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(27)),
                            child: Text(
                              "SAR",
                              style: GoogleFonts.coiny(
                                  fontSize: 15, color: Apptheme.pinkcolor),
                            ),
                          ),
                          const Icon(Icons.arrow_forward_ios_rounded)
                        ],
                      ),
                    ),
                    Container(
                      height: height * 0.07,
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 1, color: Colors.grey))),
                      child: Row(
                        children: [
                          SizedBox(
                            width: width * 0.03,
                          ),
                          const Icon(
                            Icons.food_bank_outlined,
                            size: 40,
                          ),
                          const Text(
                            textAlign: TextAlign.center,
                            "     Food",
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            width: width * 0.40,
                          ),
                          Container(
                            alignment: Alignment.center,
                            // height: height * 0.055,
                            width: width * 0.1,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(27)),
                            child: Text(
                              "100",
                              style: GoogleFonts.coiny(fontSize: 15),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            // height: height * 0.055,
                            width: width * 0.15,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(27)),
                            child: Text(
                              "SAR",
                              style: GoogleFonts.coiny(
                                  fontSize: 15, color: Apptheme.pinkcolor),
                            ),
                          ),
                          const Icon(Icons.arrow_forward_ios_rounded)
                        ],
                      ),
                    ),
                    Container(
                      height: height * 0.07,
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 1, color: Colors.grey))),
                      child: Row(
                        children: [
                          SizedBox(
                            width: width * 0.03,
                          ),
                          const Icon(
                            Icons.medical_information,
                            size: 40,
                          ),
                          const Text(
                            textAlign: TextAlign.center,
                            "     Medical Care",
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            width: width * 0.23,
                          ),
                          Container(
                            alignment: Alignment.center,
                            // height: height * 0.055,
                            width: width * 0.1,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(27)),
                            child: Text(
                              "100",
                              style: GoogleFonts.coiny(fontSize: 15),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            // height: height * 0.055,
                            width: width * 0.15,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(27)),
                            child: Text(
                              "SAR",
                              style: GoogleFonts.coiny(
                                  fontSize: 15, color: Apptheme.pinkcolor),
                            ),
                          ),
                          const Icon(Icons.arrow_forward_ios_rounded)
                        ],
                      ),
                    ),
                    Container(
                      height: height * 0.07,
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 1, color: Colors.grey))),
                      child: Row(
                        children: [
                          SizedBox(
                            width: width * 0.03,
                          ),
                          const Icon(
                            Icons.medical_information,
                            size: 40,
                          ),
                          const Text(
                            textAlign: TextAlign.center,
                            "     Grooming",
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            width: width * 0.30,
                          ),
                          Container(
                            alignment: Alignment.center,
                            // height: height * 0.055,
                            width: width * 0.1,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(27)),
                            child: Text(
                              "100",
                              style: GoogleFonts.coiny(fontSize: 15),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            // height: height * 0.055,
                            width: width * 0.15,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(27)),
                            child: Text(
                              "SAR",
                              style: GoogleFonts.coiny(
                                  fontSize: 15, color: Apptheme.pinkcolor),
                            ),
                          ),
                          const Icon(Icons.arrow_forward_ios_rounded)
                        ],
                      ),
                    ),
                    Container(
                      height: height * 0.07,
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 1, color: Colors.grey))),
                      child: Row(
                        children: [
                          SizedBox(
                            width: width * 0.03,
                          ),
                          const Icon(
                            Icons.work_history_outlined,
                            size: 40,
                          ),
                          const Text(
                            textAlign: TextAlign.center,
                            "     Training",
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            width: width * 0.33,
                          ),
                          Container(
                            alignment: Alignment.center,
                            // height: height * 0.055,
                            width: width * 0.1,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(27)),
                            child: Text(
                              "100",
                              style: GoogleFonts.coiny(fontSize: 15),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            // height: height * 0.055,
                            width: width * 0.15,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(27)),
                            child: Text(
                              "SAR",
                              style: GoogleFonts.coiny(
                                  fontSize: 15, color: Apptheme.pinkcolor),
                            ),
                          ),
                          const Icon(Icons.arrow_forward_ios_rounded)
                        ],
                      ),
                    ),
                    Container(
                      height: height * 0.07,
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 1, color: Colors.grey))),
                      child: Row(
                        children: [
                          SizedBox(
                            width: width * 0.03,
                          ),
                          const Icon(
                            Icons.attach_money,
                            size: 40,
                          ),
                          const Text(
                            textAlign: TextAlign.center,
                            "     Total",
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            width: width * 0.27,
                          ),
                          Container(
                            height: height * 0.05,
                            alignment: Alignment.centerRight,
                            width: width * 0.28,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Apptheme.pinkcolor,
                                width: 2,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text(
                                  "460  ",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "SAR  ",
                                  style: TextStyle(
                                      color: Apptheme.pinkcolor,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Center(
                      child: Container(
                        alignment: Alignment.center,
                        height: height * 0.055,
                        width: width * 0.25,
                        decoration: BoxDecoration(
                            border:
                                Border.all(width: 3, color: Apptheme.pinkcolor),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(27)),
                        child: Text(
                          "Generate",
                          style: GoogleFonts.coiny(fontSize: 15),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                  ],
                ),
              ),
            ],
          )),
    ));
  }
}
