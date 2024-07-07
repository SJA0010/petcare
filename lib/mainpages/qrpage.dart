import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class QRscreen extends StatefulWidget {
  const QRscreen({super.key});

  @override
  State<QRscreen> createState() => _QRscreenState();
}

class _QRscreenState extends State<QRscreen> {
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: height! * 0.23,
                    width: width! * 0.7,
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
                              width: width * 0.7,
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
                                  Icon(
                                    Icons.person_outline,
                                    color: Colors.white,
                                    size: width! * 0.08,
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
                                      'Samar Saeed',
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
                    height: height! * 0.02,
                  ),
                  Card(
                    elevation: 15,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Container(
                      height: height! * 0.25,
                      width: width! * 0.5,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          //  color: Colors.amber,
                          border: Border.all(
                            color: Color(0xFF95E8E4),
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Icon(
                          Icons.qr_code_2_outlined,
                          color: Colors.black,
                          size: width! * 0.44,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height! * 0.05,
                  ),
                  Container(
                    height: height! * 0.1,
                    width: width! * 0.38,
                    //color: Colors.red,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Card(
                          elevation: 7,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7)),
                          child: Container(
                            height: height! * 0.08,
                            width: width! * 0.15,
                            decoration: BoxDecoration(
                                color: Color(0xFF95E8E4),
                                borderRadius: BorderRadius.circular(7)),
                            child: Center(
                              child: Icon(
                                Icons.share,
                                color: Colors.black,
                                size: width! * 0.08,
                              ),
                            ),
                          ),
                        ),
                        Card(
                          elevation: 7,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7)),
                          child: Container(
                            height: height! * 0.08,
                            width: width! * 0.15,
                            decoration: BoxDecoration(
                                color: Color(0xFF95E8E4),
                                borderRadius: BorderRadius.circular(7)),
                            child: Center(
                              child: Icon(
                                Icons.save,
                                color: Colors.black,
                                size: width! * 0.08,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: height! * 0.0),
                  Container(
                    height: height! * 0.03,
                    width: width! * 0.36,
                    //color: Colors.red,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: height! * 0.08,
                          width: width! * 0.15,
                          decoration: BoxDecoration(),
                          child: Center(
                            child: Text(
                              'Share',
                              style: GoogleFonts.fredoka(
                                  //foreground: Paint()..color = Colors.white..style = PaintingStyle.stroke..strokeWidth = 1.0,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 54, 54, 54),
                                  fontSize: width * 0.04),
                            ),
                          ),
                        ),
                        Container(
                          height: height! * 0.08,
                          width: width! * 0.15,
                          decoration: BoxDecoration(),
                          child: Center(
                            child: Text(
                              'Save',
                              style: GoogleFonts.fredoka(
                                  //foreground: Paint()..color = Colors.white..style = PaintingStyle.stroke..strokeWidth = 1.0,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 54, 54, 54),
                                  fontSize: width * 0.04),
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
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: height * 0.15,
              width: width! * 0.5,
              //  color: Color.fromARGB(255, 121, 30, 219),
              child: Center(
                child: Text(
                  "QR",
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
