import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petcare/mainpages/homepage/about.dart';
import 'package:petcare/mainpages/homepage/faqs.dart';

class Helpscreen extends StatefulWidget {
  const Helpscreen({super.key});

  @override
  State<Helpscreen> createState() => _HelpscreenState();
}

class _HelpscreenState extends State<Helpscreen> {
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
              height: height! * 0.855,
              width: width,
              color: Color.fromARGB(255, 255, 255, 255),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: height! * 0.23,
                    width: width!,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/dots.png"))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Card(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(300),
                          ),
                          child: Container(
                              height: height * 0.08,
                              width: width * 0.75,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 252, 153, 123),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: width! * 0.03,
                                  ),
                                  Container(
                                    height: height! * 0.065,
                                    width: width! * 0.2,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image: AssetImage(
                                              "assets/mainlogo.jpg")),
                                    ),
                                  ),
                                  SizedBox(
                                    width: width! * 0.04,
                                  ),
                                  SizedBox(
                                    width: width! * 0.0,
                                  ),
                                  Container(
                                    height: height! * 0.04,
                                    width: width! * 0.43,
                                    child: Text(
                                      'Vet the Pet',
                                      style: GoogleFonts.fredoka(
                                          //foreground: Paint()..color = Colors.white..style = PaintingStyle.stroke..strokeWidth = 1.0,
                                          fontWeight: FontWeight.w500,
                                          color:
                                              Color.fromARGB(255, 54, 54, 54),
                                          fontSize: width * 0.065),
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height! * 0.07,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Aboutscreen(),
                          ));
                    },
                    child: Container(
                        height: height! * 0.055,
                        width: width! * 0.7,
                        child: Text(
                          "Help Desk",
                          style: GoogleFonts.fredoka(
                              //foreground: Paint()..color = Colors.white..style = PaintingStyle.stroke..strokeWidth = 1.0,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 79, 79, 79),
                              fontSize: width * 0.045),
                        )),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Aboutscreen(),
                          ));
                    },
                    child: Container(
                      height: height! * 0.07,
                      width: width! * 0.7,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1)),
                      //color: Colors.red,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "About US",
                            style: GoogleFonts.fredoka(
                                //foreground: Paint()..color = Colors.white..style = PaintingStyle.stroke..strokeWidth = 1.0,
                                fontWeight: FontWeight.w400,
                                color: Color.fromARGB(255, 94, 93, 93),
                                fontSize: width * 0.045),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: width! * 0.05,
                            color: Color(0xFF95E8E4),
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
                            builder: (context) => FAQsscreen(),
                          ));
                    },
                    child: Container(
                      height: height! * 0.07,
                      width: width! * 0.7,
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: Colors.grey, width: 1),
                              right: BorderSide(color: Colors.grey, width: 1),
                              left: BorderSide(color: Colors.grey, width: 1))),
                      //color: Colors.red,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "FAQs      ",
                            style: GoogleFonts.fredoka(
                                //foreground: Paint()..color = Colors.white..style = PaintingStyle.stroke..strokeWidth = 1.0,
                                fontWeight: FontWeight.w400,
                                color: Color.fromARGB(255, 94, 93, 93),
                                fontSize: width * 0.045),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: width! * 0.05,
                            color: Color(0xFF95E8E4),
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
              height: height * 0.11,
              width: width! * 0.94,
              //  color: Color.fromARGB(255, 121, 30, 219),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    width: width * 0.05,
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
                    width: width * 0.13,
                  ),
                  Container(
                      height: height * 0.06,
                      width: width * 0.4,
                      //  color: Color.fromARGB(255, 30, 232, 90),
                      child: Center(
                        child: Text(
                          'Help Desk',
                          style: GoogleFonts.coiny(
                              //foreground: Paint()..color = Colors.white..style = PaintingStyle.stroke..strokeWidth = 1.0,
                              fontWeight: FontWeight.normal,
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: width * 0.07),
                        ),
                      )),
                  SizedBox(
                    width: width * 0.12,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
