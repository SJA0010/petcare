import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petcare/mainpages/addpetpages.dart/addpetscreen.dart';

class Petsscreen extends StatefulWidget {
  const Petsscreen({super.key});

  @override
  State<Petsscreen> createState() => _PetsscreenState();
}

class _PetsscreenState extends State<Petsscreen> {
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
            height: height! * 0.14,
            width: width! * 0.3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: height! * 0.13,
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
          alignment: Alignment.bottomRight,
          child: Container(
            height: height! * 0.1,
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
            height: height,
            width: width,
            decoration: BoxDecoration(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: height * 0.05,
                ),
                Container(
                  height: height * 0.1,
                  width: width,
                  //  color: Color.fromARGB(255, 121, 30, 219),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: width * 0.05,
                      ),
                      Container(
                        height: height * 0.046,
                        width: width * 0.08,
                        decoration: BoxDecoration(
                          //color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        //  child: Icon(
                        //    Icons.arrow_back_ios_new,
                        //    color: Color(0xff95E8E4),
                        //    size: width! * 0.045,
                        //  ),
                      ),
                      SizedBox(
                        width: width * 0.18,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Addpetscreen(),
                              ));
                        },
                        child: Container(
                            height: height * 0.1,
                            width: width * 0.4,
                            //  color: Color.fromARGB(255, 30, 232, 90),
                            child: Center(
                              child: Text(
                                "MY PET",
                                style: GoogleFonts.coiny(
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white,
                                    fontSize: width * 0.07),
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.2,
                ),
                Container(
                  height: height * 0.2,
                  width: width * 0.4,
                  decoration: BoxDecoration(
                    //    color: Colors.amber,
                    image: DecorationImage(
                        image: AssetImage("assets/cat.png"), fit: BoxFit.cover),
                  ),
                ),
                SizedBox(
                  height: height * 0.015,
                ),
                Container(
                    height: height * 0.08,
                    width: width * 0.9,
                    // color: Colors.amber,
                    child: Center(
                      child: Text(
                        "THERE ARE NO PETS YET",
                        style: GoogleFonts.coiny(
                            fontWeight: FontWeight.normal,
                            color: Color(0xffA3A3A3),
                            fontSize: width * 0.05),
                      ),
                    )),
                SizedBox(
                  height: height * 0.025,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Addpetscreen(),
                        ));
                  },
                  child: Container(
                      height: height * 0.075,
                      width: width * 0.6,
                      decoration: BoxDecoration(
                        color: Color(0xffFF835D),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          "+ ADD PET",
                          style: GoogleFonts.coiny(
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                              fontSize: width * 0.05),
                        ),
                      )),
                ),
                SizedBox(
                  height: height * 0.145,
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
