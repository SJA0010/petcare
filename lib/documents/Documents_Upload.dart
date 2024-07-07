import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petcare/Apptheme/apptheme.dart';
import 'package:petcare/documents/Document_Proccess.dart';
import 'package:petcare/painter/painterTop.dart';

//make by Subhan Abbasi 3
class Documentsupload extends StatefulWidget {
  const Documentsupload({super.key});

  @override
  State<Documentsupload> createState() => _DocumentsuploadState();
}

class _DocumentsuploadState extends State<Documentsupload> {
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
              Apptheme.appBar("My Documents", height, context, width),
              SizedBox(
                height: height * 0.6,
                width: width * 0.9,
                // color: Colors.amber,
                child: Column(
                  children: [
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
                              InkWell(
                                onTap: () {
                                  showGeneralDialog(
                                    context: context,
                                    pageBuilder: (context, animation,
                                        secondaryAnimation) {
                                      return Material(
                                        type: MaterialType.transparency,
                                        child: Center(
                                          child: Container(
                                            height: height * 0.28,
                                            width: width * 0.9,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: 2,
                                                    color: Colors.grey),
                                                color: Apptheme.bluecolor,
                                                borderRadius:
                                                    BorderRadius.circular(15)),
                                            child: Column(
                                              children: [
                                                Container(
                                                  alignment: Alignment.center,
                                                  height: height * 0.18,
                                                  width: width * 0.7,
                                                  child: const Text(
                                                    textAlign: TextAlign.center,
                                                    "Are You Sure You Want to upload this document?",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: height * 0.075,
                                                  width: width * 0.6,
                                                  // color: Colors.red,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Container(
                                                        alignment:
                                                            Alignment.center,
                                                        height: height * 0.055,
                                                        width: width * 0.25,
                                                        decoration: BoxDecoration(
                                                            color: Colors.white,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        27)),
                                                        child: Text(
                                                          "Confirm",
                                                          style:
                                                              GoogleFonts.coiny(
                                                                  fontSize: 15),
                                                        ),
                                                      ),
                                                      Container(
                                                        alignment:
                                                            Alignment.center,
                                                        height: height * 0.055,
                                                        width: width * 0.25,
                                                        decoration: BoxDecoration(
                                                            color: Colors.white,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        27)),
                                                        child: Text(
                                                          "Delete",
                                                          style:
                                                              GoogleFonts.coiny(
                                                                  fontSize: 15),
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
                                },
                                child: Container(
                                  height: height * 0.09,
                                  width: width * 0.09,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(width: 0.8),
                                      shape: BoxShape.circle),
                                  child: const Icon(
                                    Icons.add,
                                  ),
                                ),
                              ),
                              Container(
                                height: height * 0.09,
                                width: width * 0.09,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(width: 0.8),
                                    shape: BoxShape.circle),
                                child: const Icon(
                                  Icons.more_horiz_outlined,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.15,
                      width: width * 0.9,
                      // color: Colors.red,
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const DocumentProccess(),
                                  ));
                            },
                            child: SizedBox(
                              height: height * 0.13,
                              width: width * 0.25,
                              // color: Colors.blue,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Icon(
                                    Icons.edit,
                                    size: 65,
                                  ),
                                  Text(
                                    "Roxy's Pet Info",
                                    style: TextStyle(
                                        color: Colors.grey[600],
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: width * 0.075,
                          ),
                          SizedBox(
                            height: height * 0.14,
                            width: width * 0.25,
                            // color: Colors.blue,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(
                                  Icons.edit,
                                  size: 65,
                                ),
                                Text(
                                  textAlign: TextAlign.center,
                                  "Roxy's Medicines description",
                                  style: TextStyle(
                                      color: Colors.grey[600],
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: width * 0.075,
                          ),
                          SizedBox(
                            height: height * 0.13,
                            width: width * 0.25,
                            // color: Colors.blue,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(
                                  Icons.edit,
                                  size: 65,
                                ),
                                Text(
                                  "Roxy's Pet Info",
                                  style: TextStyle(
                                      color: Colors.grey[600],
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.15,
                      width: width * 0.9,
                      // color: Colors.red,
                      child: Row(
                        children: [
                          SizedBox(
                            height: height * 0.15,
                            width: width * 0.25,
                            // color: Colors.blue,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(
                                  Icons.document_scanner_outlined,
                                  size: 65,
                                ),
                                Text(
                                  "Roxy's X-rays",
                                  style: TextStyle(
                                      color: Colors.grey[600],
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: width * 0.075,
                          ),
                          SizedBox(
                            height: height * 0.14,
                            width: width * 0.25,
                            // color: Colors.blue,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(
                                  Icons.document_scanner_outlined,
                                  size: 65,
                                ),
                                Text(
                                  textAlign: TextAlign.center,
                                  "Roxy's 1st day",
                                  style: TextStyle(
                                      color: Colors.grey[600],
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    ));
  }
}
