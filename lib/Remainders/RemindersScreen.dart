// ignore_for_file: prefer_typing_uninitialized_variables, file_names, avoid_print

import 'package:flutter/material.dart';
import 'package:petcare/Remainders/Reminders1.dart';
import 'package:petcare/Remainders/Reminders2.dart';
import 'package:petcare/Remainders/Reminders3.dart';

class RemindersScreen extends StatefulWidget {
  const RemindersScreen({super.key});

  @override
  State<RemindersScreen> createState() => _RemindersScreenState();
}

class _RemindersScreenState extends State<RemindersScreen> {
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
        Reminders1(),
        Reminders2(),
        Reminders3(),
      ],
    ));
  }
}
