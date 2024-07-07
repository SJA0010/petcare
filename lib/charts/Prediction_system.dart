// ignore_for_file: file_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:petcare/Apptheme/apptheme.dart';
import 'package:petcare/painter/painterTop.dart';

//make by Subhan Abbasi 39
class PredictionSystem extends StatefulWidget {
  const PredictionSystem({super.key});

  @override
  State<PredictionSystem> createState() => _PredictionSystemState();
}

class _PredictionSystemState extends State<PredictionSystem> {
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
          painter: PainterTop(),
          child: Center(
            child: SizedBox(
              height: height,
              width: width * 0.9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Apptheme.appBar("Prediction System", height, context, width),
                  SizedBox(height: height * 0.03),
                  Apptheme.button(
                    "Pet Type  ",
                    height * 1.5,
                    width * 4,
                    null,
                    textcolor: Colors.grey,
                    lasticon: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.25),
                            spreadRadius: 7,
                            blurRadius: 10,
                            offset: const Offset(-5, 0),
                          ),
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.25),
                            spreadRadius: 3,
                            blurRadius: 15,
                            offset: const Offset(5, 0),
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: height * 0.05,
                      width: width * 0.07,
                      child: Icon(
                        Icons.arrow_drop_down_sharp,
                        color: Apptheme.pinkcolor,
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.03),
                  Apptheme.button(
                    "Select Pet Symptoms",
                    height * 1.5,
                    width * 4,
                    null,
                    textcolor: Colors.grey,
                    lasticon: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.25),
                            spreadRadius: 7,
                            blurRadius: 10,
                            offset: const Offset(-5, 0),
                          ),
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.25),
                            spreadRadius: 3,
                            blurRadius: 15,
                            offset: const Offset(5, 0),
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: height * 0.05,
                      width: width * 0.07,
                      child: Icon(
                        Icons.arrow_drop_down_sharp,
                        color: Apptheme.pinkcolor,
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.03),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Apptheme.button("  Predict", height, width, null),
                      SizedBox(width: width * 0.04),
                    ],
                  ),
                  SizedBox(height: height * 0.03),
                  Center(
                    child: Container(
                      height: height * 0.25,
                      width: width * 0.8,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Apptheme.pinkcolor.withOpacity(0.5),
                            width: 2),
                        color: Apptheme.pinkcolor.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Apptheme.largeText("Results...",
                            textColor: Colors.black38),
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.03),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Apptheme.button(
                          "   Regenerate ", height, width * 1.2, null),
                      SizedBox(width: width * 0.04),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
