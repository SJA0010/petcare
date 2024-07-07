// ignore_for_file: deprecated_member_use, prefer_typing_uninitialized_variables, file_names, unused_local_variable, avoid_print

import 'package:flutter/material.dart';
import 'package:petcare/calendar/Calendar1.dart';
import 'package:petcare/calendar/Calendar2.dart';
import 'package:petcare/calendar/Calendar3.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  var height, width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: PageView(
      onPageChanged: (value) {
        print("dadaaa$value");
      },
      children: const [
        Calendar1(),
        Calendar2(),
        Calendar3(),
      ],
    ));
  }
}
