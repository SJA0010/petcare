// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'package:petcare/Apptheme/apptheme.dart';
import 'package:petcare/calendarwidget/Calendarwidget.dart';
import 'package:petcare/painter/painterTop.dart';

//make by Subhan Abbasi 22
class Calendar2 extends StatefulWidget {
  const Calendar2({super.key});

  @override
  State<Calendar2> createState() => _Calendar2State();
}

class _Calendar2State extends State<Calendar2> {
  var data1 = [
    {"time": "08:00 am", "title": "Appointment ", "color": Apptheme.bluecolor},
    {"time": "09:45 am", "title": "Box Cleaning", "color": Apptheme.pinkcolor},
    {"time": "10:50 am", "title": "Play Session", "color": Colors.red},
    {"time": "10:50 am", "title": "Appointment 4", "color": Colors.orange}
  ];
  var data = [
    {"day": "Sun", "date": "06"},
    {"day": "Mon", "date": "07"},
    {"day": "Tue", "date": "08"},
    {"day": "Wed", "date": "09"},
    {"day": "Thu", "date": "10"},
    {"day": "Fri", "date": "11"},
    {"day": "Sat", "date": "12"},
    {"day": "Sun", "date": "13"},
    {"day": "Mon", "date": "14"},
    {"day": "Tue", "date": "15"},
    {"day": "Wed", "date": "16"},
    {"day": "Thu", "date": "17"},
    {"day": "Fri", "date": "18"},
    {"day": "Sat", "date": "19"},
    {"day": "Sun", "date": "20"},
    {"day": "Mon", "date": "21"},
    {"day": "Tue", "date": "22"},
    {"day": "Wed", "date": "23"},
    {"day": "Thu", "date": "24"},
    {"day": "Fri", "date": "25"},
    {"day": "Sat", "date": "26"},
    {"day": "Sun", "date": "27"},
    {"day": "Mon", "date": "28"},
    {"day": "Tue", "date": "29"},
    {"day": "Wed", "date": "30"},
    {"day": "Thu", "date": "31"},
    {"day": "Fri", "date": "01"},
    {"day": "Sat", "date": "02"},
    {"day": "Sun", "date": "03"},
    {"day": "Mon", "date": "04"}
  ];
  int index = 0;
  int index1 = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    Future.delayed(const Duration(seconds: 2), () {
      bottomBar(context);
    });
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
                  Apptheme.appBar("Calender", height, context, width),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Apptheme.smalltext("Today"),
                      InkWell(
                        onTap: () => bottomBar(context),
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.black,
                              width: 2,
                            ),
                          ),
                          child: const Icon(Icons.add),
                        ),
                      ),
                    ],
                  ),
                  Apptheme.heading(
                    "Thursday, 26 May 2023",
                    isCentered: false,
                    width: width * 0.7,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(
                    height: height * 0.15,
                    width: width,
                    child: ListView.builder(
                      itemCount: data.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int i) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 3, vertical: 6),
                          child: Card(
                            elevation: index == i ? 6 : 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  index = i;
                                });
                              },
                              child: Container(
                                height: height * 0.15,
                                width: width * 0.1,
                                decoration: BoxDecoration(
                                  color: index != i
                                      ? Apptheme.lightpink
                                      : Apptheme.pinkcolor,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Apptheme.smalltext(data[i]["day"],
                                        textColor: Colors.white,
                                        fontSize: 15.0),
                                    Apptheme.smalltext(data[i]["date"],
                                        textColor: Colors.white,
                                        fontSize: 15.0),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Expanded(
                    // color: Colors.red,
                    child: ListView.builder(
                      // physics: const NeverScrollableScrollPhysics(),
                      itemCount: data1.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (BuildContext context, int i) {
                        return Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 3, vertical: 6),
                            child: CustomContainer(
                              color: i == 0
                                  ? Apptheme.greencolor
                                  : i == 1
                                      ? Apptheme.bluecolor
                                      : i == 2
                                          ? Apptheme.pinkcolor
                                          : Colors.orange,
                              data1: data1,
                              i: i,
                            ));
                      },
                    ),
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

Future<Widget> bottomBar(BuildContext context) async {
  return await showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      double height, width;
      height = MediaQuery.of(context).size.height;
      width = MediaQuery.of(context).size.width;

      return Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(10))),
        child: Center(
          child: Container(
            color: Colors.white,
            height: height * 0.9,
            width: width * 0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Apptheme.heading("Cencal", width: width * 0.2),
                    Apptheme.heading("New Event", width: width * 0.3),
                    Apptheme.heading("ADD", width: width * 0.2),
                  ],
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Apptheme.textfield(
                  hinttext: "Title",
                  width: width,
                  height: height,
                  fillColor: Colors.black,
                  borderRadius: 0,
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Apptheme.textfield(
                  hinttext: "Location",
                  width: width,
                  height: height,
                  borderRadius: 0,
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                SizedBox(
                  height: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Apptheme.smalltext("All-day", fontSize: 14.0),
                      Switch(
                        value: false,
                        onChanged: (value) {},
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                SizedBox(
                  height: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Apptheme.smalltext("Starts", fontSize: 14.0),
                      Apptheme.smalltext("28 May 2023", fontSize: 14.0),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                SizedBox(
                  height: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Apptheme.smalltext("Ends", fontSize: 14.0),
                      Apptheme.smalltext("29 May 2023", fontSize: 14.0),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
