import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petcare/mainpages/homepage/comments.dart';

class Reviewscreen extends StatefulWidget {
  const Reviewscreen({super.key});

  @override
  State<Reviewscreen> createState() => _ReviewscreenState();
}

class _ReviewscreenState extends State<Reviewscreen> {
  @override
  var height, width;
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
              height: height! * 0.22,
              width: width! * 0.6,
              decoration: BoxDecoration(
                  color: Color.fromARGB(192, 253, 88, 38),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(500),
                      bottomRight: Radius.circular(1000),
                      topRight: Radius.circular(10))),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: height! * 0.855,
              width: width,
              //  color: Color.fromARGB(255, 255, 255, 255),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: height! * 0.1,
                  ),
                  Container(
                    height: height! * 0.1,
                    width: width! * 0.8,
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: width! * 0.1,
                        backgroundColor: Colors.red,
                      ),
                      title: Text(
                        "Haylie Aminoff",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: width! * 0.04,
                            color: Colors.black),
                      ),
                      subtitle: Text(
                        "Posting Publicly",
                        style: TextStyle(
                            fontSize: width! * 0.03, color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height! * 0.04,
                  ),
                  Container(
                    height: height! * 0.07,
                    width: width! * 0.5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [],
                    ),
                  ),
                  SizedBox(
                    height: height! * 0.03,
                  ),
                  Text(
                    "Share more about your experience",
                    style: TextStyle(
                        color: Colors.black, fontSize: width! * 0.045),
                  ),
                  SizedBox(
                    height: height! * 0.03,
                  ),
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Container(
                      height: height! * 0.2,
                      width: width! * 0.8,
                      decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.green.shade900, width: 1),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextFormField(
                        maxLines: 5,
                        style: GoogleFonts.inter(
                            color: Color.fromARGB(255, 95, 94, 94),
                            fontSize: width! * 0.042),
                        cursorColor: Color.fromARGB(255, 135, 135, 135),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          fillColor: Color.fromRGBO(255, 131, 93, 1.0),
                          hintText:
                              "Share details of your own experience at this\n place",
                          hintStyle: GoogleFonts.inter(
                            fontSize: width! * 0.035,
                            color: Colors.grey,
                          ),
                          prefix: SizedBox(
                            width: width! * 0.02,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height! * 0.08,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Commentsscreen(),
                          ));
                    },
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Container(
                        height: height! * 0.06,
                        width: width! * 0.8,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 6, 79, 70),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            "Post Review",
                            style: TextStyle(
                                color: Colors.white, fontSize: width! * 0.04),
                          ),
                        ),
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
              width: width! * 0.94,
              //  color: Color.fromARGB(255, 121, 30, 219),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: width * 0.02,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        height: height * 0.046,
                        width: width * 0.08,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          color: Color(0xff95E8E4),
                          size: width! * 0.045,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Container(
                      height: height * 0.1,
                      width: width * 0.73,
                      //  color: Color.fromARGB(255, 30, 232, 90),
                      child: Center(
                        child: Text(
                          'Add Review and Comment',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.coiny(
                              //foreground: Paint()..color = Colors.white..style = PaintingStyle.stroke..strokeWidth = 1.0,
                              fontWeight: FontWeight.normal,
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: width * 0.065),
                        ),
                      )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
