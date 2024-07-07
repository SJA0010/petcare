import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petcare/painter/painerBoth.dart';

import '../Apptheme/apptheme.dart';

//make by Subhan Abbasi 1
class DocumentDelete extends StatefulWidget {
  const DocumentDelete({super.key});

  @override
  State<DocumentDelete> createState() => _DocumentDeleteState();
}

class _DocumentDeleteState extends State<DocumentDelete> {
  var height, width;
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
        painter: PainterBoth(),
        child: Center(
          child: SizedBox(
            height: height * 0.45,
            width: width * 0.8,
            //   color: Colors.amber,
            child: Column(
              children: [
                Text(
                  textAlign: TextAlign.center,
                  "The Documents            have been Deleted Successfully",
                  style: GoogleFonts.coiny(
                      fontSize: 30, color: Apptheme.pinkcolor),
                ),
                SizedBox(
                  height: height * 0.2,
                ),
                Container(
                  height: height * 0.08,
                  width: width * 0.475,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Apptheme.bluecolor),
                      borderRadius: BorderRadius.circular(18)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(Icons.done_outline_outlined),
                      Text(
                        "Done",
                        style: GoogleFonts.coiny(
                            fontSize: 25, color: Colors.black),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
