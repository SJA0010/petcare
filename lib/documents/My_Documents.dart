import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petcare/Apptheme/apptheme.dart';
import 'package:petcare/documents/documentdetails.dart';
import 'package:petcare/painter/painterTop.dart';

//make by Subhan Abbasi 4

class MyDocumentScreens extends StatefulWidget {
  const MyDocumentScreens({super.key});

  @override
  State<MyDocumentScreens> createState() => _MyDocumentScreensState();
}

class _MyDocumentScreensState extends State<MyDocumentScreens> {
  var width, height;
  final TextEditingController textFieldController = TextEditingController();

  void popup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
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
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  'Update document name',
                  style: GoogleFonts.fredoka(
                    fontSize: width! * 0.06,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF7D7A7A),
                  ),
                ),
                SizedBox(
                  height: height! * 0.02,
                ),
                Container(
                  height: height! * 0.002,
                  color: Color.fromARGB(255, 68, 68, 68),
                ),
                SizedBox(
                  height: height! * 0.02,
                ),
                Text(
                  '   Enter a new document name',
                  style: GoogleFonts.fredoka(
                    fontSize: width! * 0.04,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Container(
                    height: height! * 0.05,
                    width: width! * 0.6,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: TextFormField(
                      controller: textFieldController,
                      decoration: InputDecoration(
                        prefix: Container(
                          width: 10,
                        ),
                        labelText: '',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: height! * 0.02),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 255, 255, 255),
                  ),
                  onPressed: () {
                    // Implement your button functionality here
                    print('Button pressed');
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'Done',
                    style: GoogleFonts.fredoka(
                      color: Colors.black,
                      fontSize: width! * 0.045,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

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
                      "Are You Sure You Want to upload this document?",
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
                              "Delete",
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
                height: height * 0.7,
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
                                  popup2(context);
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
                    SizedBox(
                      height: height! * 0.03,
                    ),
                    SizedBox(
                      height: height * 0.15,
                      width: width,
                      // color: Colors.red,
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Documentsdetails(),
                                  ));
                            },
                            child: SizedBox(
                              height: height * 0.15,
                              width: width * 0.25,
                              // color: Colors.blue,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Icon(
                                    Icons.description_outlined,
                                    size: 65,
                                  ),
                                  Text(
                                    "Roxy's Pet Info",
                                    style: TextStyle(
                                        fontSize: width! * 0.03,
                                        color: Colors.grey[600],
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: width * 0.06,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Documentsdetails(),
                                  ));
                            },
                            child: SizedBox(
                              height: height * 0.14,
                              width: width * 0.26,
                              // color: Colors.blue,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Icon(
                                    Icons.description_outlined,
                                    size: 65,
                                  ),
                                  Text(
                                    textAlign: TextAlign.center,
                                    "Roxy's Medicines description",
                                    style: TextStyle(
                                        fontSize: width! * 0.03,
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
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Documentsdetails(),
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
                                    Icons.description_outlined,
                                    size: 65,
                                  ),
                                  Text(
                                    "Roxy's Pet Info",
                                    style: TextStyle(
                                        fontSize: width! * 0.03,
                                        color: Colors.grey[600],
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height! * 0.03,
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
                                      fontSize: width! * 0.03,
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
                                      fontSize: width! * 0.03,
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
