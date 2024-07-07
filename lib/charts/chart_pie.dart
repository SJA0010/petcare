import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petcare/Apptheme/apptheme.dart';
import 'package:petcare/painter/painterTop.dart';

import 'package:pie_chart/pie_chart.dart';

//make by Subhan Abbasi 14
class Chartpie extends StatefulWidget {
  const Chartpie({super.key});

  @override
  State<Chartpie> createState() => _ChartpieState();
}

class _ChartpieState extends State<Chartpie> {
  void popup2(BuildContext context) {
    showGeneralDialog(
      context: context,
      pageBuilder: (context, animation, secondaryAnimation) {
        return Material(
          type: MaterialType.transparency,
          child: Center(
            child: Container(
              height: height * 0.28,
              width: width * 0.9,
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.grey),
                  color: Apptheme.bluecolor,
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: height * 0.18,
                    width: width * 0.7,
                    child: const Text(
                      textAlign: TextAlign.center,
                      "Are You Sure You Want to delete this chart?",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.075,
                    width: width * 0.6,
                    // color: Colors.red,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: height * 0.055,
                            width: width * 0.25,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(27)),
                            child: Text(
                              "Confirm",
                              style: GoogleFonts.coiny(fontSize: 15),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: height * 0.055,
                            width: width * 0.25,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(27)),
                            child: Text(
                              "Delete",
                              style: GoogleFonts.coiny(fontSize: 15),
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
        );
      },
    );
  }

  Map<String, double> dataMap = {
    "Flutter": 5,
    "React": 3,
    "Xamarin": 2,
    "Ionic": 2,
  };
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
              Apptheme.appBar(
                  "Expenses Tracking Chart", height, context, width),
              Container(
                height: height * 0.71,
                width: width * 0.9,
                //color: Colors.amber,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      height: height * 0.1,
                      width: width * 0.9,
                      //  color: Colors.red,
                      child: Text(
                        "For Feburary 2024",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      height: height * 0.42,
                      width: width * 0.9,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border:
                              Border.all(width: 3, color: Apptheme.pinkcolor)),
                      child: PieChart(
                        dataMap: dataMap,
                        animationDuration: Duration(milliseconds: 1000),
                        chartLegendSpacing: 32,
                        chartRadius: MediaQuery.of(context).size.width / 2,
                        colorList: [
                          Color.fromARGB(255, 255, 29, 104),
                          Color.fromARGB(255, 255, 72, 133),
                          Color.fromARGB(255, 255, 119, 173),
                          Color.fromARGB(255, 255, 153, 187)
                        ],
                        initialAngleInDegree: 0,
                        chartType: ChartType.disc,
                        ringStrokeWidth: 32,
                        centerText: "HYBRID",
                        legendOptions: LegendOptions(
                          showLegendsInRow: true,
                          legendPosition: LegendPosition.bottom,
                          showLegends: true,
                          legendShape: BoxShape.circle,
                          legendTextStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        chartValuesOptions: ChartValuesOptions(
                          showChartValueBackground: true,
                          showChartValues: true,
                          showChartValuesInPercentage: true,
                          showChartValuesOutside: false,
                          decimalPlaces: 1,
                        ),
                        // gradientList: ---To add gradient colors---
                        // emptyColorGradient: ---Empty Color gradient---
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      height: height * 0.08,
                      width: width * 0.9,
                      // color: Colors.red,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.arrow_back_ios_new,
                                size: 40, color: Apptheme.pinkcolor),
                            Icon(Icons.arrow_forward_ios_outlined,
                                size: 40, color: Apptheme.pinkcolor),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      height: height * 0.08,
                      width: width * 0.9,
                      // color: Colors.red,
                      child: Center(
                          child: InkWell(
                        onTap: () {
                          popup2(context);
                        },
                        child: Container(
                          height: height * 0.063,
                          width: width * 0.35,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 3, color: Apptheme.pinkcolor),
                              borderRadius: BorderRadius.circular(18)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.delete_outline_rounded),
                              Text(
                                "Delete",
                                style: GoogleFonts.coiny(
                                    fontSize: 22, color: Colors.black),
                              )
                            ],
                          ),
                        ),
                      )),
                    ),
                  ],
                ),
              ),
            ],
          )),
    ));
  }
}
