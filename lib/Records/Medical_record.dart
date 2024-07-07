import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petcare/Apptheme/apptheme.dart';
import 'package:petcare/Records/medical_six.dart';
import 'package:petcare/painter/painterTop.dart';

//make by Subhan Abbasi 15
class Medical extends StatefulWidget {
  const Medical({super.key});

  @override
  State<Medical> createState() => _MedicalState();
}

class _MedicalState extends State<Medical> {
  void popup4(BuildContext context) {
    showGeneralDialog(
      context: context,
      pageBuilder: (context, animation, secondaryAnimation) {
        return Material(
          type: MaterialType.transparency,
          child: Center(
            child: Container(
              height: height * 0.28,
              width: width * 0.9,
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.grey),
                  color: Apptheme.bluecolor,
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: height * 0.18,
                    width: width * 0.7,
                    child: const Text(
                      textAlign: TextAlign.center,
                      "Are You Sure You Want to save the record?",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.075,
                    width: width * 0.6,
                    // color: Colors.red,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Medicalsix(),
                                ));
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: height * 0.055,
                            width: width * 0.25,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(27)),
                            child: Text(
                              "Confirm",
                              style: GoogleFonts.coiny(fontSize: 15),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: height * 0.055,
                            width: width * 0.25,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(27)),
                            child: Text(
                              "Cancel",
                              style: GoogleFonts.coiny(fontSize: 15),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

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
                      child: TextFormField(
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.only(left: 150),
                            hintText: " name",
                            border: InputBorder.none),
                      ),
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
                      child: TextFormField(
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.only(left: 150),
                            hintText: "weight",
                            border: InputBorder.none),
                      ),
                    ),
                    Container(
                      height: height * 0.1,
                      width: width * 0.8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          border: Border.all(
                            width: 1.5,
                            color: Apptheme.pinkcolor,
                          )),
                      child: TextFormField(
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(left: 140),
                            hintText: "Medication",
                            suffix: Text(
                              "-   kg   +   ",
                              style: TextStyle(color: Apptheme.pinkcolor),
                            ),
                            border: InputBorder.none),
                      ),
                    ),
                    Container(
                      height: height * 0.1,
                      width: width * 0.8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          border: Border.all(
                            width: 1.5,
                            color: Apptheme.pinkcolor,
                          )),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.only(left: 130),
                            hintText: "Surgical History",
                            border: InputBorder.none),
                      ),
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
                      child: TextFormField(
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.only(left: 150),
                            hintText: "Allergies",
                            border: InputBorder.none),
                      ),
                    ),
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
                          InkWell(
                            onTap: () {
                              popup4(context);
                            },
                            child: Container(
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
