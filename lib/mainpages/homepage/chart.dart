import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petcare/mainpages/homepage/chartmodel.dart';
import 'package:charts_flutter/flutter.dart ' as charts;

class Healthchart extends StatefulWidget {
  const Healthchart({super.key});

  @override
  State<Healthchart> createState() => _HealthchartState();
}

class _HealthchartState extends State<Healthchart> {
  @override
  final List<Barchartmodel> data = [
    Barchartmodel(
        Weight: "12",
        heratbeat: "99",
        temprature: 100,
        Pressure: "140",
        color: charts.ColorUtil.fromDartColor(Colors.amber)),
    Barchartmodel(
        Weight: "02",
        heratbeat: "90",
        temprature: 92,
        Pressure: "100",
        color: charts.ColorUtil.fromDartColor(Color.fromARGB(255, 255, 48, 7))),
    Barchartmodel(
        Weight: "7",
        heratbeat: "90",
        temprature: 110,
        Pressure: "120",
        color: charts.ColorUtil.fromDartColor(Color.fromARGB(255, 10, 116, 0))),
    Barchartmodel(
        Weight: "18",
        heratbeat: "102",
        temprature: 105,
        Pressure: "90",
        color: charts.ColorUtil.fromDartColor(Color.fromARGB(255, 3, 33, 84))),
    Barchartmodel(
        Weight: "16",
        heratbeat: "88",
        temprature: 95,
        Pressure: "90",
        color: charts.ColorUtil.fromDartColor(Color.fromARGB(255, 102, 0, 107)))
  ];
  void showpopup(BuildContext contex) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Color(0xFF95E8E4),
          content: Container(
            height: height! * 0.12,
            width: width! * 0.9,
            decoration: BoxDecoration(),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Are you sure you want to delete \nthis chart',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.fredoka(
                        fontWeight: FontWeight.w400,
                        fontSize: width! * 0.04,
                        height: 1.6,
                        color: Colors.black),
                  ),
                ]),
          ),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(true);
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
              ),
              child: Text('Confirm',
                  style:
                      GoogleFonts.fredoka(color: Color.fromARGB(255, 0, 0, 0))),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(false);
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
              ),
              child: Text('Cancel',
                  style:
                      GoogleFonts.fredoka(color: Color.fromARGB(255, 0, 0, 0))),
            ),
          ],
        );
      },
    );
  }

  var height, width;
  TextEditingController datecontroller = TextEditingController();

  Widget build(BuildContext context) {
    List<charts.Series<Barchartmodel, String>> series = [
      charts.Series(
        id: "financial",
        data: data,
        domainFn: (Barchartmodel series, _) => series.Weight!,
        measureFn: (Barchartmodel series, _) => series.temprature!,
        colorFn: (Barchartmodel series, _) => series.color,
      )
    ];
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      // resizeToAvoidBottomInset: false,
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
            alignment: Alignment.center,
            child: Container(
              height: height! * 0.95,
              width: width! * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: height! * 0.22,
                  ),
                  Container(
                    height: height! * 0.05,
                    width: width! * 0.85,
                    child: Text("Date: 23/11/2023",
                        style: GoogleFonts.fredoka(
                            fontWeight: FontWeight.w500,
                            fontSize: width! * 0.04,
                            height: 1.6,
                            color: Color.fromARGB(255, 74, 73, 73))),
                  ),
                  Card(
                    elevation: 7,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      height: height! * 0.5,
                      width: width! * 0.85,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: Color.fromARGB(255, 255, 106, 0),
                              width: 2)),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: charts.BarChart(
                          series,
                          animate: true,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height! * 0.05,
                  ),
                  InkWell(
                    onTap: () {
                      showpopup(context);
                    },
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Container(
                        height: height! * 0.06,
                        width: width! * 0.3,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                              color: Color.fromARGB(255, 255, 98, 0), width: 2),
                        ),
                        child: Center(
                          child: Text(
                            "Delete",
                            style: GoogleFonts.fredoka(
                                color: Color.fromARGB(255, 0, 87, 78),
                                fontSize: width! * 0.04,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: height * 0.17,
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
                  Container(
                      height: height * 0.13,
                      width: width * 0.8,
                      //  color: Color.fromARGB(255, 30, 232, 90),
                      child: Center(
                        child: Text(
                          'Health Tracking Chart',
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
