import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petcare/mainpages/homepage/genform.dart';
import 'package:petcare/mainpages/homepage/healthhistoryclass.dart';

class Healthhistoryscreen extends StatefulWidget {
  const Healthhistoryscreen({super.key});

  @override
  State<Healthhistoryscreen> createState() => _HealthhistoryscreenState();
}

class _HealthhistoryscreenState extends State<Healthhistoryscreen> {
  @override
  var height, width;
  @override
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
              decoration: const BoxDecoration(
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
              decoration: const BoxDecoration(
                  color: Color.fromARGB(192, 253, 88, 38),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(500),
                      bottomRight: Radius.circular(1000),
                      topRight: Radius.circular(10))),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: height! * 0.65,
              width: width! * 0.9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                      color: const Color.fromARGB(255, 255, 106, 0), width: 2)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: height! * 0.02,
                  ),
                  Container(
                    height: height! * 0.11,
                    width: width,
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Color.fromARGB(255, 255, 106, 0),
                                width: 1))),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: width! * 0.12,
                        backgroundColor: Colors.amber,
                      ),
                      title: Text(
                        "Roxy",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: width! * 0.045,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Container(
                    child: Scrollbar(
                      // isAlwaysShown: true,
                      trackVisibility: true,
                      interactive: true,
                      //showTrackOnHover: true,
                      //hoverThickness: 20,

                      radius: const Radius.circular(30),
                      thickness: 20,
                      child: ListView.builder(
                        itemCount: Healthclass.myhealth.length,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const Generateformscreen(),
                                  ));
                            },
                            child: Container(
                                height: height! * 0.06,
                                width: width! * 0.9,
                                decoration: const BoxDecoration(
                                    // borderRadius: BorderRadius.circular(5),
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Color.fromARGB(
                                                255, 255, 106, 0),
                                            width: 1))),
                                child: Center(
                                  child: Text(
                                    Healthclass.myhealth[index].Date!,
                                    style: GoogleFonts.fredoka(
                                        color: const Color.fromARGB(
                                            255, 56, 56, 56),
                                        fontSize: width! * 0.04),
                                  ),
                                )),
                          );
                        },
                      ),
                    ),
                  )),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: height! * 0.13,
              width: width! * 0.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Generateformscreen(),
                            ));
                      },
                      child: Container(
                        height: height! * 0.06,
                        width: width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                              color: const Color.fromARGB(255, 255, 98, 0),
                              width: 2),
                        ),
                        child: Center(
                          child: Text(
                            "Generate new chart",
                            style: GoogleFonts.fredoka(
                                color: const Color.fromARGB(255, 0, 87, 78),
                                fontSize: width! * 0.04,
                                fontWeight: FontWeight.w700),
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
            child: SizedBox(
              height: height * 0.18,
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
                          color: const Color(0xff95E8E4),
                          size: width! * 0.045,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: SizedBox(
                        height: height * 0.15,
                        width: width * 0.8,
                        //  color: Color.fromARGB(255, 30, 232, 90),
                        child: Center(
                          child: Text(
                            'Health Tracking Chart History',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.coiny(
                                //foreground: Paint()..color = Colors.white..style = PaintingStyle.stroke..strokeWidth = 1.0,
                                fontWeight: FontWeight.normal,
                                color: const Color.fromARGB(255, 255, 255, 255),
                                fontSize: width * 0.06),
                          ),
                        )),
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
