// ignore_for_file: prefer_typing_uninitialized_variables, file_names

import 'package:flutter/material.dart';
import 'package:petcare/painter/painterTop.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:petcare/Apptheme/apptheme.dart';

// import 'package:calender';
//make by Subhan Abbasi 36
class Reminders1 extends StatefulWidget {
  const Reminders1({super.key});

  @override
  State<Reminders1> createState() => _Reminders1State();
}

class _Reminders1State extends State<Reminders1> {
  var height, width;
  List<DateTime> _dates = [];

  bool switch1 = false;

  Widget? _yourDayBuilder({
    required DateTime date,
    TextStyle? textStyle,
    BoxDecoration? decoration,
    bool? isSelected,
    bool? isDisabled,
    bool? isToday,
  }) {
    return Container(
      decoration: decoration ?? const BoxDecoration(),
      child: Center(
        child: Text(
          date.day.toString(),
          style: textStyle ?? const TextStyle(),
        ),
      ),
    );
  }

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
                  Container(
                    decoration: BoxDecoration(
                      color: Apptheme.pinkcolor.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 400,
                    child: CalendarDatePicker2WithActionButtons(
                      value: const [],
                      config: CalendarDatePicker2WithActionButtonsConfig(
                          firstDayOfWeek: 1,
                          calendarType: CalendarDatePicker2Type.range,
                          selectedDayTextStyle: const TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                          selectedDayHighlightColor: Apptheme.pinkcolor,
                          controlsTextStyle: const TextStyle(fontSize: 20),
                          dayBuilder: _yourDayBuilder,
                          todayTextStyle: TextStyle(color: Apptheme.pinkcolor),
                          dayTextStyle: const TextStyle(color: Colors.black)),
                      onValueChanged: (dates) => _dates = _dates,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          color: Apptheme.bluecolor,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: const Icon(
                          Icons.timer,
                          color: Colors.white,
                        ),
                      ),
                      Apptheme.largeText("Time", fontWeight: FontWeight.bold),
                      Switch(
                        value: switch1,
                        onChanged: (value) {
                          setState(() {
                            print("data   $value");
                            switch1 = !switch1;
                          });
                        },
                      )
                    ],
                  ),
                  Apptheme.largeText("Hi There", fontWeight: FontWeight.bold),
                  const Divider(),
                  Apptheme.largeText("Note", textColor: Colors.grey),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Apptheme.button("    Add", height, width, null),
                    ],
                  ),
                  SizedBox(height: height * 0.02),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
