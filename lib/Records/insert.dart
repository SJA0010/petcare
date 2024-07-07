import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petcare/Apptheme/apptheme.dart';
import 'package:petcare/Records/Medical_record.dart';
import 'package:petcare/painter/painterTop.dart';

class Insert extends StatefulWidget {
  const Insert({super.key});

  @override
  State<Insert> createState() => _InsertState();
}

class _InsertState extends State<Insert> {
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
              Apptheme.appBar("Insert Record", height, context, width),
              SizedBox(
                height: height * 0.71,
                width: width * 0.8,
                //   color: Colors.amber,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height * 0.08,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Hi User !",
                        style: GoogleFonts.fredoka(
                            fontSize: width! * 0.065,
                            color: Apptheme.bluecolor),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.06,
                    ),
                    Container(
                      width: width * 0.75,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Your Pet does not have a record. You can click on insert to create a new record.",
                        style: GoogleFonts.fredoka(
                            fontSize: width! * 0.045,
                            color: Apptheme.pinkcolor,
                            height: 1.8,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.25,
                    ),
                    Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Medical(),
                              ));
                        },
                        child: Card(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(27)),
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
                              "Insert",
                              style: GoogleFonts.coiny(fontSize: 15),
                            ),
                          ),
                        ),
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
