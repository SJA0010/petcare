import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Commentsscreen extends StatefulWidget {
  const Commentsscreen({super.key});

  @override
  State<Commentsscreen> createState() => _CommentsscreenState();
}

class _CommentsscreenState extends State<Commentsscreen> {
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
              height: height! * 0.78,
              width: width,
              //  color: Color.fromARGB(255, 255, 255, 255),
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8),
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Container(
                          height: height! * 0.27,
                          width: width! * 0.9,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
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
                                    "Just now",
                                    style: TextStyle(
                                        fontSize: width! * 0.03,
                                        color: Colors.black),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: height! * 0.01,
                              ),
                              Container(
                                height: height! * 0.0008,
                                width: width,
                                color: Color.fromARGB(255, 163, 163, 163),
                              ),
                              SizedBox(
                                height: height! * 0.01,
                              ),
                              Container(
                                height: height! * 0.07,
                                width: width,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: width! * 0.02,
                                    ),
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
                                      size: width! * 0.05,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow.shade700,
                                      size: width! * 0.05,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow.shade700,
                                      size: width! * 0.05,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow.shade700,
                                      size: width! * 0.05,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow.shade700,
                                      size: width! * 0.05,
                                    )
                                  ],
                                ),
                              ),
                              Text(
                                "  Lorem ipsum dolor sit amet, consetetur sadi   sspscing elitr, sed diam nonumy",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color.fromARGB(255, 172, 172, 172),
                                    fontSize: width! * 0.04),
                              )
                            ],
                          )),
                    ),
                  );
                },
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
                          'Review and Comment',
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
