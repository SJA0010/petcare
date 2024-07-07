// ignore_for_file: file_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:petcare/Apptheme/apptheme.dart';
import 'package:petcare/painter/painterTop.dart';

// import 'package:calender';
//make by Subhan Abbasi 37
class Reminders2 extends StatefulWidget {
  const Reminders2({super.key});

  @override
  State<Reminders2> createState() => _Reminders2State();
}

class _Reminders2State extends State<Reminders2> {
  var height, width;
  bool value = false;

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
              child: ListView(
                children: [
                  Apptheme.appBar("Reminders", height, context, width),
                  Apptheme.largeText("Today", fontSize: 30.0),
                  SizedBox(height: height * 0.03),
                  Row(
                    children: [
                      SizedBox(
                          height: height * 0.04,
                          width: width * 0.01,
                          child: Transform.scale(
                            scale: 1.2,
                            child: Radio(
                              fillColor:
                                  MaterialStatePropertyAll(Apptheme.pinkcolor),
                              value: false,
                              groupValue: value,
                              onChanged: (value) {
                                setState(() {
                                  value = value!;
                                });
                              },
                            ),
                          )),
                      SizedBox(width: width * 0.06),
                      InkWell(
                          onTap: () {
                            setState(() {
                              value = false;
                            });
                          },
                          child:
                              Apptheme.largeText("First One", fontSize: 22.0))
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: width * 0.07),
                      Apptheme.largeText("Reminders",
                          fontSize: 19.0, textColor: Colors.grey),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.0),
                    child: Divider(),
                  ),
                  SizedBox(height: height * 0.05),
                  Row(
                    children: [
                      SizedBox(
                          height: height * 0.04,
                          width: width * 0.01,
                          child: Transform.scale(
                            scale: 1.2,
                            child: Radio(
                              fillColor:
                                  MaterialStatePropertyAll(Apptheme.pinkcolor),
                              value: false,
                              groupValue: !value,
                              onChanged: (value) {
                                setState(() {
                                  value = value!;
                                });
                              },
                            ),
                          )),
                      SizedBox(width: width * 0.06),
                      InkWell(
                          onTap: () {
                            setState(() {
                              value = true;
                            });
                          },
                          child: Apptheme.largeText("Hi there", fontSize: 22.0))
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: width * 0.07),
                      Apptheme.largeText("Reminders",
                          fontSize: 19.0, textColor: Colors.grey),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.0),
                    child: Divider(),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
