import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Mapsscreen extends StatefulWidget {
  const Mapsscreen({super.key});

  @override
  State<Mapsscreen> createState() => _MapsscreenState();
}

class _MapsscreenState extends State<Mapsscreen> {
  @override
  var height, width;
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: height! * 0.16,
              width: width! * 0.52,
              decoration: BoxDecoration(
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
              decoration: BoxDecoration(
                  color: Color.fromARGB(192, 253, 88, 38),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(300),
                      bottomRight: Radius.circular(1000),
                      topRight: Radius.circular(10))),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: height! * 0.75,
              width: width,
              color: Colors.white,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: height,
                        width: width,
                        decoration: BoxDecoration()),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: height! * 0.08,
                      width: width! * 0.8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            height: height! * 0.05,
                            width: width! * 0.8,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(234, 255, 255, 255),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: TextFormField(
                              style: GoogleFonts.coiny(
                                  color: Color.fromARGB(255, 75, 75, 75),
                                  fontSize: width! * 0.042),
                              cursorColor: Color.fromARGB(255, 135, 135, 135),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                fillColor: Color.fromRGBO(255, 131, 93, 1.0),
                                prefix: SizedBox(
                                  width: width! * 0.03,
                                ),
                                hintText: "Pet Coffee",
                                hintStyle: GoogleFonts.fredoka(
                                  fontSize: width! * 0.042,
                                  color: Color.fromARGB(255, 101, 100, 100),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: height! * 0.25,
                      width: width! * 0.75,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Card(
                            elevation: 15,
                            shadowColor: Color.fromARGB(255, 8, 93, 88),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Container(
                                height: height! * 0.2,
                                width: width! * 0.7,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(234, 255, 255, 255),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: height! * 0.03,
                                    ),
                                    Container(
                                      height: height! * 0.03,
                                      width: width! * 0.6,
                                      child: Text(
                                        "Keels Pet Cofee",
                                        style: GoogleFonts.fredoka(
                                            color: Colors.black,
                                            fontSize: width! * 0.05,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    SizedBox(
                                      height: height! * 0.01,
                                    ),
                                    Container(
                                      height: height! * 0.03,
                                      width: width! * 0.6,
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              "5.0",
                                              style: GoogleFonts.fredoka(
                                                color: Colors.black,
                                                fontSize: width! * 0.04,
                                                //fontWeight: FontWeight.w600
                                              ),
                                            ),
                                            SizedBox(
                                              width: width! * 0.005,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow.shade700,
                                              size: width! * 0.048,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow.shade700,
                                              size: width! * 0.048,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow.shade700,
                                              size: width! * 0.048,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow.shade700,
                                              size: width! * 0.048,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow.shade700,
                                              size: width! * 0.048,
                                            )
                                          ]),
                                    ),
                                    SizedBox(
                                      height: height! * 0.01,
                                    ),
                                    Container(
                                      height: height! * 0.03,
                                      width: width! * 0.62,
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.location_on_outlined,
                                              color: Color.fromARGB(
                                                  255, 88, 88, 88),
                                              size: width! * 0.065,
                                            ),
                                            Text(
                                              "700 m away from you",
                                              style: GoogleFonts.fredoka(
                                                color: Color.fromARGB(
                                                    255, 88, 88, 88),
                                                fontSize: width! * 0.04,
                                                //fontWeight: FontWeight.w600
                                              ),
                                            ),
                                          ]),
                                    )
                                  ],
                                )),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: height * 0.15,
              width: width! * 0.8,
              //  color: Color.fromARGB(255, 121, 30, 219),
              child: Center(
                child: Text(
                  "Pet Friendly Places",
                  style: GoogleFonts.coiny(
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                      fontSize: width * 0.07),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
