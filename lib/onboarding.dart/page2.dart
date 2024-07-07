import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class page2 extends StatefulWidget {
  const page2({super.key});

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  var height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            // color: Color.fromARGB(255, 61, 56, 56),
            image: DecorationImage(
          image: AssetImage("assets/onb.jpg"),
          fit: BoxFit.cover,
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: height! * 0.52,
            ),
            Container(
              height: height! * 0.3,
              width: width,
              decoration:
                  BoxDecoration(color: Color.fromARGB(114, 255, 255, 255)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: height * 0.05,
                    width: width,
                    // color: Colors.blue,
                    child: Center(
                      child: Text(
                        "PREDICTION SYSTEM",
                        style: GoogleFonts.coiny(
                            color: Colors.black,
                            fontSize: width! * 0.06,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Container(
                      height: height * 0.24,
                      width: width! * 0.9,
                      // color: Colors.blue,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "To be able to diagnose your pet from your home and administrator\nFirst aid \nin absence of veterinary \ncare!",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.coiny(
                                color: Colors.grey,
                                fontSize: width! * 0.05,
                                height: 1.7,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
