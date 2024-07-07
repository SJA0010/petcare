import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petcare/Apptheme/apptheme.dart';
import 'package:petcare/painter/painerBoth.dart';

//make by Subhan Abbasi 2
class DocumentProccess extends StatefulWidget {
  const DocumentProccess({super.key});

  @override
  State<DocumentProccess> createState() => _DocumentProccessState();
}

class _DocumentProccessState extends State<DocumentProccess> {
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
            height: height,
            width: width * 0.8,
            //   color: Colors.amber,
            child: Column(
              children: [
                Apptheme.appBar("", height, context, width),
                SizedBox(
                  height: height! * 0.07,
                ),
                Text(
                  textAlign: TextAlign.center,
                  "The Documents            have been Proccessd Successfully!",
                  style: GoogleFonts.coiny(
                      height: 1.8,
                      fontSize: width! * 0.065,
                      color: Apptheme.pinkcolor),
                ),
                SizedBox(
                  height: height * 0.2,
                ),
                Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18)),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: height * 0.08,
                      width: width * 0.475,
                      decoration: BoxDecoration(
                          border:
                              Border.all(width: 2, color: Apptheme.bluecolor),
                          borderRadius: BorderRadius.circular(18)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Icon(Icons.check_box_outlined),
                          Text(
                            "Done",
                            style: GoogleFonts.coiny(
                                fontSize: width! * 0.045, color: Colors.black),
                          )
                        ],
                      ),
                    ),
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
