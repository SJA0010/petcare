import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petcare/mainpages/homepage/chart.dart';

class Generateformscreen extends StatefulWidget {
  const Generateformscreen({super.key});

  @override
  State<Generateformscreen> createState() => _GenerateformscreenState();
}

class _GenerateformscreenState extends State<Generateformscreen> {
  void showpopup(BuildContext contex) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: const Color(0xFF95E8E4),
          content: Container(
            height: height! * 0.12,
            width: width! * 0.9,
            decoration: const BoxDecoration(),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Are you sure you want to generate \nthis chart',
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Healthchart(),
                    ));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              child: Text('Confirm',
                  style: GoogleFonts.fredoka(
                      color: const Color.fromARGB(255, 0, 0, 0))),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(false);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              child: Text('Cancel',
                  style: GoogleFonts.fredoka(
                      color: const Color.fromARGB(255, 0, 0, 0))),
            ),
          ],
        );
      },
    );
  }

  var height, width;
  TextEditingController datecontroller = TextEditingController();
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
              height: height! * 0.9,
              width: width! * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: height! * 0.2,
                  ),
                  SizedBox(
                      height: height! * 0.1,
                      width: width,
                      child: ListTile(
                        leading: Icon(
                          Icons.scale_outlined,
                          color: Colors.black,
                          size: width! * 0.08,
                        ),
                        title: Text(
                          "Weight",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontSize: width! * 0.045),
                        ),
                        trailing: Container(
                          height: height! * 0.06,
                          width: width! * 0.35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: const Color.fromARGB(255, 255, 111, 0),
                                width: 2),
                          ),
                          child: TextFormField(
                              style: GoogleFonts.inter(
                                  color: const Color.fromARGB(255, 35, 15, 15),
                                  fontSize: width! * 0.042),
                              cursorColor:
                                  const Color.fromARGB(255, 135, 135, 135),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                fillColor:
                                    const Color.fromRGBO(255, 255, 255, 1),
                                prefix: SizedBox(
                                  width: width! * 0.14,
                                ),
                                hintText: "kg",
                                hintStyle: TextStyle(
                                    color:
                                        const Color.fromRGBO(255, 165, 112, 1),
                                    fontSize: width! * 0.04),
                              )),
                        ),
                      )),
                  SizedBox(
                    height: height! * 0.01,
                  ),
                  SizedBox(
                      height: height! * 0.1,
                      width: width,
                      child: ListTile(
                        leading: Icon(
                          Icons.monitor_heart_outlined,
                          color: Colors.black,
                          size: width! * 0.08,
                        ),
                        title: Text(
                          "Heartbeat",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontSize: width! * 0.045),
                        ),
                        trailing: Container(
                          height: height! * 0.06,
                          width: width! * 0.35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: const Color.fromARGB(255, 255, 111, 0),
                                width: 2),
                          ),
                          child: TextFormField(
                              style: GoogleFonts.inter(
                                  color: const Color.fromARGB(255, 35, 15, 15),
                                  fontSize: width! * 0.042),
                              cursorColor:
                                  const Color.fromARGB(255, 135, 135, 135),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                fillColor:
                                    const Color.fromRGBO(255, 255, 255, 1),
                                prefix: SizedBox(
                                  width: width! * 0.14,
                                ),
                                hintText: "bpm",
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color:
                                        const Color.fromRGBO(255, 165, 112, 1),
                                    fontSize: width! * 0.04),
                              )),
                        ),
                      )),
                  SizedBox(
                    height: height! * 0.01,
                  ),
                  SizedBox(
                      height: height! * 0.1,
                      width: width,
                      child: ListTile(
                        leading: Icon(
                          Icons.device_thermostat_outlined,
                          color: Colors.black,
                          size: width! * 0.08,
                        ),
                        title: Text(
                          "Temprature",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontSize: width! * 0.045),
                        ),
                        trailing: Container(
                          height: height! * 0.06,
                          width: width! * 0.35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: const Color.fromARGB(255, 255, 111, 0),
                                width: 2),
                          ),
                          child: TextFormField(
                              style: GoogleFonts.inter(
                                  color: const Color.fromARGB(255, 35, 15, 15),
                                  fontSize: width! * 0.042),
                              cursorColor:
                                  const Color.fromARGB(255, 135, 135, 135),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                fillColor:
                                    const Color.fromRGBO(255, 255, 255, 1),
                                prefix: SizedBox(
                                  width: width! * 0.14,
                                ),
                                hintText: "c",
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color:
                                        const Color.fromRGBO(255, 165, 112, 1),
                                    fontSize: width! * 0.04),
                              )),
                        ),
                      )),
                  SizedBox(
                    height: height! * 0.01,
                  ),
                  SizedBox(
                      height: height! * 0.1,
                      width: width,
                      child: ListTile(
                        leading: Icon(
                          Icons.monitor_heart_outlined,
                          color: Colors.black,
                          size: width! * 0.08,
                        ),
                        title: Text(
                          "Pressure",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontSize: width! * 0.045),
                        ),
                        trailing: Container(
                          height: height! * 0.06,
                          width: width! * 0.35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: const Color.fromARGB(255, 255, 111, 0),
                                width: 2),
                          ),
                          child: TextFormField(
                              style: GoogleFonts.inter(
                                  color: const Color.fromARGB(255, 35, 15, 15),
                                  fontSize: width! * 0.042),
                              cursorColor:
                                  const Color.fromARGB(255, 135, 135, 135),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                fillColor:
                                    const Color.fromRGBO(255, 255, 255, 1),
                                prefix: SizedBox(
                                  width: width! * 0.14,
                                ),
                                hintText: "mmHg",
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color:
                                        const Color.fromRGBO(255, 165, 112, 1),
                                    fontSize: width! * 0.04),
                              )),
                        ),
                      )),
                  SizedBox(
                    height: height! * 0.01,
                  ),
                  SizedBox(
                      height: height! * 0.1,
                      width: width,
                      child: ListTile(
                        leading: Icon(
                          Icons.calendar_month_outlined,
                          color: Colors.black,
                          size: width! * 0.08,
                        ),
                        title: Text(
                          "Date",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontSize: width! * 0.045),
                        ),
                        trailing: Container(
                          height: height! * 0.06,
                          width: width! * 0.35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: const Color.fromARGB(255, 255, 111, 0),
                                width: 2),
                          ),
                          child: TextFormField(
                            controller: datecontroller,
                            style: GoogleFonts.inter(
                                color: const Color.fromARGB(255, 35, 15, 15),
                                fontSize: width! * 0.042),
                            cursorColor:
                                const Color.fromARGB(255, 135, 135, 135),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              fillColor: const Color.fromRGBO(70, 70, 70, 1),
                              prefix: SizedBox(
                                width: width! * 0.05,
                              ),
                              hintText: "",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(255, 165, 112, 1),
                                  fontSize: width! * 0.04),
                            ),
                            readOnly: true,
                            onTap: () {
                              _selectDate();
                            },
                          ),
                        ),
                      )),
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
                              color: const Color.fromARGB(255, 255, 98, 0),
                              width: 2),
                        ),
                        child: Center(
                          child: Text(
                            "Generate",
                            style: GoogleFonts.fredoka(
                                color: const Color.fromARGB(255, 0, 87, 78),
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
            child: SizedBox(
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
                          color: const Color(0xff95E8E4),
                          size: width! * 0.045,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                      height: height * 0.15,
                      width: width * 0.8,
                      //  color: Color.fromARGB(255, 30, 232, 90),
                      child: Center(
                        child: Text(
                          'Vital Signs',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.coiny(
                              //foreground: Paint()..color = Colors.white..style = PaintingStyle.stroke..strokeWidth = 1.0,
                              fontWeight: FontWeight.normal,
                              color: const Color.fromARGB(255, 255, 255, 255),
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

  Future<void> _selectDate() async {
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2100));
    if (picked != null) {
      datecontroller.text = picked.toString().split(" ")[0];
    }
  }
}
