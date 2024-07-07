import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petcare/Records/insert.dart';
import 'package:petcare/documents/My_Documents.dart';
import 'package:petcare/mainpages/addpetpages.dart/Mypetsscreen.dart';
import 'package:petcare/mainpages/addpetpages.dart/updaterecord.dart';
import 'package:petcare/mainpages/homepage/healthhistory.dart';

class Petdetailscreen extends StatefulWidget {
  final String name;
  final String pic;

  const Petdetailscreen({required this.name, required this.pic});

  @override
  State<Petdetailscreen> createState() => _PetdetailscreenState();
}

class _PetdetailscreenState extends State<Petdetailscreen> {
  @override
  var height, width;
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(children: [
        Align(
          alignment: Alignment.bottomRight,
          child: Container(
            height: height! * 0.4,
            width: width! * 0.3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: height! * 0.14,
                  width: width! * 0.17,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(192, 253, 88, 38),
                  ),
                )
              ],
            ),
          ),
        ),
        Align(
            alignment: Alignment.bottomLeft,
            child: Container(
                height: height! * 0.1,
                width: width! * 0.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(5000),
                    // bottomRight: Radius.circular(300)
                  ),
                  color: Color.fromARGB(209, 149, 232, 228),
                ))),
        Align(
          alignment: Alignment.bottomRight,
          child: Container(
            height: height! * 0.6,
            width: width! * 0.35,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: height! * 0.05,
                  width: width! * 0.1,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF95E8E4),
                  ),
                )
              ],
            ),
          ),
        ),
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
          alignment: Alignment.center,
          child: Container(
            height: height!,
            width: width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: height * 0.02,
                ),
                Container(
                  height: height * 0.12,
                  width: width,
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
                        width: width * 0.18,
                      ),
                      Container(
                          height: height * 0.1,
                          width: width * 0.4,
                          //  color: Color.fromARGB(255, 30, 232, 90),
                          child: Center(
                            child: Text(
                              '${widget.name}',
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
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Updaterecordscreen(),
                              ));
                        },
                        child: Icon(
                          Icons.edit_note_outlined,
                          color: Color.fromARGB(255, 52, 53, 53),
                          size: width! * 0.11,
                        ),
                      ),
                    ],
                  ),
                ),
                // SizedBox(
                //   height: height * 0.01,
                // ),
                Container(
                  height: height! * 0.28,
                  width: width! * 0.85,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('${widget.pic}'))),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Container(
                  height: height! * 0.11,
                  width: width! * 0.9,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Container(
                          height: height,
                          width: width! * 0.25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Color(0xffFF835D),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Age',
                                style: GoogleFonts.coiny(
                                    //foreground: Paint()..color = Colors.white..style = PaintingStyle.stroke..strokeWidth = 1.0,
                                    fontWeight: FontWeight.normal,
                                    color: Color.fromARGB(255, 68, 68, 68),
                                    fontSize: width * 0.042),
                              ),
                              SizedBox(
                                height: height! * 0.01,
                              ),
                              Text(
                                '32',
                                style: GoogleFonts.coiny(
                                    //foreground: Paint()..color = Colors.white..style = PaintingStyle.stroke..strokeWidth = 1.0,
                                    fontWeight: FontWeight.normal,
                                    color: Color(0xff064E57),
                                    fontSize: width * 0.042),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Container(
                          height: height,
                          width: width! * 0.25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Color(0xffFF835D),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Weight',
                                style: GoogleFonts.coiny(
                                    //foreground: Paint()..color = Colors.white..style = PaintingStyle.stroke..strokeWidth = 1.0,
                                    fontWeight: FontWeight.normal,
                                    color: Color.fromARGB(255, 68, 68, 68),
                                    fontSize: width * 0.042),
                              ),
                              SizedBox(
                                height: height! * 0.01,
                              ),
                              Text(
                                '7.5 kg',
                                style: GoogleFonts.coiny(
                                    //foreground: Paint()..color = Colors.white..style = PaintingStyle.stroke..strokeWidth = 1.0,
                                    fontWeight: FontWeight.normal,
                                    color: Color(0xff064E57),
                                    fontSize: width * 0.042),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Container(
                          height: height,
                          width: width! * 0.25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Color(0xffFF835D),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Height',
                                style: GoogleFonts.coiny(
                                    //foreground: Paint()..color = Colors.white..style = PaintingStyle.stroke..strokeWidth = 1.0,
                                    fontWeight: FontWeight.normal,
                                    color: Color.fromARGB(255, 68, 68, 68),
                                    fontSize: width * 0.042),
                              ),
                              SizedBox(
                                height: height! * 0.01,
                              ),
                              Text(
                                '42 cm',
                                style: GoogleFonts.coiny(
                                    //foreground: Paint()..color = Colors.white..style = PaintingStyle.stroke..strokeWidth = 1.0,
                                    fontWeight: FontWeight.normal,
                                    color: Color(0xff064E57),
                                    fontSize: width * 0.042),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Container(
                  height: height! * 0.11,
                  width: width! * 0.7,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Container(
                          height: height,
                          width: width! * 0.25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Color.fromARGB(255, 252, 174, 151),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Gender',
                                style: GoogleFonts.coiny(
                                    //foreground: Paint()..color = Colors.white..style = PaintingStyle.stroke..strokeWidth = 1.0,
                                    fontWeight: FontWeight.normal,
                                    color: Color.fromARGB(255, 68, 68, 68),
                                    fontSize: width * 0.042),
                              ),
                              SizedBox(
                                height: height! * 0.01,
                              ),
                              Text(
                                'Female',
                                style: GoogleFonts.coiny(
                                    //foreground: Paint()..color = Colors.white..style = PaintingStyle.stroke..strokeWidth = 1.0,
                                    fontWeight: FontWeight.normal,
                                    color: Color(0xff064E57),
                                    fontSize: width * 0.042),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Container(
                          height: height,
                          width: width! * 0.25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Color.fromARGB(255, 252, 174, 151),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Breed',
                                style: GoogleFonts.coiny(
                                    //foreground: Paint()..color = Colors.white..style = PaintingStyle.stroke..strokeWidth = 1.0,
                                    fontWeight: FontWeight.normal,
                                    color: Color.fromARGB(255, 68, 68, 68),
                                    fontSize: width * 0.042),
                              ),
                              SizedBox(
                                height: height! * 0.01,
                              ),
                              Text(
                                'Cat',
                                style: GoogleFonts.coiny(
                                    //foreground: Paint()..color = Colors.white..style = PaintingStyle.stroke..strokeWidth = 1.0,
                                    fontWeight: FontWeight.normal,
                                    color: Color(0xff064E57),
                                    fontSize: width * 0.042),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height! * 0.01,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Healthhistoryscreen(),
                        ));
                  },
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                        height: height * 0.08,
                        width: width * 0.9,
                        decoration: BoxDecoration(
                          color: Color(0xFF95E8E4),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: height! * 0.06,
                              width: width! * 0.15,
                              decoration: BoxDecoration(
                                color: Color(0xffFF835D),
                                borderRadius: BorderRadius.circular(60),
                              ),
                              child: Icon(
                                Icons.pets,
                                color: Colors.white,
                                size: width! * 0.05,
                              ),
                            ),
                            SizedBox(
                              width: width! * 0.04,
                            ),
                            Container(
                              height: height! * 0.04,
                              width: width! * 0.5,
                              child: Text(
                                'Health Tracking Chart',
                                style: GoogleFonts.coiny(
                                    //foreground: Paint()..color = Colors.white..style = PaintingStyle.stroke..strokeWidth = 1.0,
                                    fontWeight: FontWeight.normal,
                                    color: Color(0xff064E57),
                                    fontSize: width * 0.042),
                              ),
                            ),
                          ],
                        )),
                  ),
                ),

                SizedBox(
                  height: height * 0.01,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyDocumentScreens(),
                        ));
                  },
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                        height: height * 0.08,
                        width: width * 0.9,
                        decoration: BoxDecoration(
                          color: Color(0xFF95E8E4),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: height! * 0.06,
                              width: width! * 0.15,
                              decoration: BoxDecoration(
                                color: Color(0xffFF835D),
                                borderRadius: BorderRadius.circular(60),
                              ),
                              child: Icon(
                                Icons.pets,
                                color: Colors.white,
                                size: width! * 0.05,
                              ),
                            ),
                            SizedBox(
                              width: width! * 0.04,
                            ),
                            Container(
                              height: height! * 0.04,
                              width: width! * 0.5,
                              child: Text(
                                'Add a document',
                                style: GoogleFonts.coiny(
                                    //foreground: Paint()..color = Colors.white..style = PaintingStyle.stroke..strokeWidth = 1.0,
                                    fontWeight: FontWeight.normal,
                                    color: Color(0xff064E57),
                                    fontSize: width * 0.042),
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Insert(),
                          ));
                    },
                    child: Container(
                        height: height * 0.08,
                        width: width * 0.9,
                        decoration: BoxDecoration(
                          color: Color(0xFF95E8E4),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: height! * 0.06,
                              width: width! * 0.15,
                              decoration: BoxDecoration(
                                color: Color(0xffFF835D),
                                borderRadius: BorderRadius.circular(60),
                              ),
                              child: Icon(
                                Icons.pets,
                                color: Colors.white,
                                size: width! * 0.05,
                              ),
                            ),
                            SizedBox(
                              width: width! * 0.04,
                            ),
                            Container(
                              height: height! * 0.04,
                              width: width! * 0.5,
                              child: Text(
                                'Records',
                                style: GoogleFonts.coiny(
                                    //foreground: Paint()..color = Colors.white..style = PaintingStyle.stroke..strokeWidth = 1.0,
                                    fontWeight: FontWeight.normal,
                                    color: Color(0xff064E57),
                                    fontSize: width * 0.042),
                              ),
                            ),
                          ],
                        )),
                  ),
                ),

                SizedBox(),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
