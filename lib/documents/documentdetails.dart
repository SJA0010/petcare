import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petcare/Apptheme/apptheme.dart';
import 'package:petcare/documents/Document_Proccess.dart';
import 'package:petcare/painter/painterTop.dart';

//make by Subhan Abbasi 3
class Documentsdetails extends StatefulWidget {
  const Documentsdetails({super.key});

  @override
  State<Documentsdetails> createState() => _DocumentsdetailsState();
}

class _DocumentsdetailsState extends State<Documentsdetails> {
  var width, height;
  void popup2(BuildContext context) {
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
                      "Are You Sure You Want to update this document?",
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
                                  builder: (context) => DocumentProccess(),
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

  void popup3(BuildContext context) {
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
                      "Are You Sure You Want to Replace this document?",
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
                                  builder: (context) => DocumentProccess(),
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
                      "Are You Sure You Want to delete this document?",
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
                                  builder: (context) => DocumentProccess(),
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

  void popup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          elevation: 0.0,
          backgroundColor: Color.fromARGB(255, 255, 196, 177),
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Color.fromARGB(255, 255, 203, 187),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  height: height! * 0.03,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    popup2(context);
                  },
                  child: Text("+ Update document name",
                      style: GoogleFonts.fredoka(
                          color: Color.fromARGB(255, 66, 65, 65),
                          fontSize: width! * 0.045,
                          fontWeight: FontWeight.w600)),
                ),
                SizedBox(
                  height: height! * 0.03,
                ),
                Container(
                  height: height! * 0.002,
                  color: Colors.grey.shade700,
                ),
                SizedBox(
                  height: height! * 0.03,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    popup3(context);
                  },
                  child: Text("+ Replace document",
                      style: GoogleFonts.fredoka(
                          color: Color.fromARGB(255, 66, 65, 65),
                          fontSize: width! * 0.045,
                          fontWeight: FontWeight.w600)),
                ),
                SizedBox(
                  height: height! * 0.03,
                ),
                Container(
                  height: height! * 0.002,
                  color: Colors.grey.shade700,
                ),
                SizedBox(
                  height: height! * 0.03,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    popup4(context);
                  },
                  child: Text("+ Delete document",
                      style: GoogleFonts.fredoka(
                          color: Color.fromARGB(255, 66, 65, 65),
                          fontSize: width! * 0.045,
                          fontWeight: FontWeight.w600)),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      //color: Color.fromARGB(0, 255, 255, 255),
      height: height,
      width: width,
      child: CustomPaint(
          painter: PainterTop(),
          child: Column(
            children: [
              Apptheme.appBar("Pet Clinics Numbers", height, context, width),
              Container(
                height: height * 0.75,
                width: width * 0.9,
                //  color: Color.fromARGB(255, 255, 255, 255),
                child: Column(
                  children: [
                    SizedBox(
                      height: height! * 0.02,
                    ),
                    Container(
                      height: height! * 0.07,
                      width: width! * 0.8,
                      child: Text(
                        "2-10-2022\nPDF",
                        style: GoogleFonts.fredoka(
                            color: Colors.black,
                            fontSize: width! * 0.04,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: width * 0.65,
                        ),
                        SizedBox(
                          height: height * 0.08,
                          width: width * 0.25,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: width! * 0.09,
                              ),
                              InkWell(
                                onTap: () {
                                  popup(context);
                                },
                                child: Container(
                                  height: height * 0.09,
                                  width: width * 0.09,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(width: 0.8),
                                      shape: BoxShape.circle),
                                  child: const Icon(
                                    Icons.more_horiz_outlined,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                        child: Container(
                      //  color: Colors.red,
                      child: ListView(
                        children: [
                          Container(
                            height: height! * 0.07,
                            width: width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Oz Pets Clinic",
                                  style: GoogleFonts.fredoka(
                                      color: Colors.black,
                                      fontSize: width! * 0.04,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "053 863 7674",
                                  style: GoogleFonts.fredoka(
                                      color: Colors.black,
                                      fontSize: width! * 0.04,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: height! * 0.07,
                            width: width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Oz Pets Clinic",
                                  style: GoogleFonts.fredoka(
                                      color: Colors.black,
                                      fontSize: width! * 0.04,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "053 863 7674",
                                  style: GoogleFonts.fredoka(
                                      color: Colors.black,
                                      fontSize: width! * 0.04,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: height! * 0.05,
                            width: width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Oz Pets Clinic",
                                  style: GoogleFonts.fredoka(
                                      color: Colors.black,
                                      fontSize: width! * 0.04,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "053 863 7674",
                                  style: GoogleFonts.fredoka(
                                      color: Colors.black,
                                      fontSize: width! * 0.04,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: height! * 0.05,
                            width: width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Oz Pets Clinic",
                                  style: GoogleFonts.fredoka(
                                      color: Colors.black,
                                      fontSize: width! * 0.04,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "053 863 7674",
                                  style: GoogleFonts.fredoka(
                                      color: Colors.black,
                                      fontSize: width! * 0.04,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ))
                  ],
                ),
              )
            ],
          )),
    ));
  }
}
