import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petcare/Apptheme/apptheme.dart';
import 'package:petcare/painter/painterTop.dart';

//make by Subhan Abbasi 13
class MedicalOne extends StatefulWidget {
  const MedicalOne({super.key});
  @override
  State<MedicalOne> createState() => _MedicalOneState();
}

class _MedicalOneState extends State<MedicalOne> {
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
              Apptheme.appBar("Medical Record", height, context, width),
              SizedBox(
                height: height * 0.71,
                width: width * 0.8,
                //color: Colors.amber,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: height * 0.065,
                      width: width * 0.8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          border: Border.all(
                            width: 1.5,
                            color: Apptheme.pinkcolor,
                          )),
                      child: const Center(
                          child: Text(
                        "User",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                    ),
                    Container(
                        height: height * 0.065,
                        width: width * 0.8,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            border: Border.all(
                              width: 1.5,
                              color: Apptheme.pinkcolor,
                            )),
                        child: const Center(
                            child: Text(
                          "72 kg",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ))),
                    Container(
                        height: height * 0.1,
                        width: width * 0.8,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            border: Border.all(
                              width: 1.5,
                              color: Apptheme.pinkcolor,
                            )),
                        child: const Center(
                            child: Text(
                          "Amoxicillin, Clavamox",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ))),
                    Container(
                        height: height * 0.1,
                        width: width * 0.8,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            border: Border.all(
                              width: 1.5,
                              color: Apptheme.pinkcolor,
                            )),
                        child: const Center(
                            child: Text(
                          "anesthesia Induction",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ))),
                    Container(
                        height: height * 0.065,
                        width: width * 0.8,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            border: Border.all(
                              width: 1.5,
                              color: Apptheme.pinkcolor,
                            )),
                        child: const Center(
                            child: Text(
                          "Protein allergy",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ))),
                    SizedBox(
                      height: height * 0.05,
                      width: width * 0.8,
                      // color: Colors.red,
                      child: SizedBox(
                        width: width * 0.3,
                        child: Row(
                          children: [
                            Text(
                              "Neutering ",
                              style: GoogleFonts.coiny(fontSize: 17),
                            ),
                            SizedBox(
                              width: width * 0.05,
                            ),
                            Container(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 22,
                                width: 22,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.06,
                      width: width * 0.8,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: height * 0.055,
                            width: width * 0.25,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 3, color: Apptheme.pinkcolor),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(27)),
                            child: Text(
                              "Save",
                              style: GoogleFonts.coiny(fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
    ));
  }
}
