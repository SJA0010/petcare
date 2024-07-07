// ignore_for_file: prefer_typing_uninitialized_variables, file_names, avoid_print

import 'package:flutter/material.dart';

import 'package:petcare/Expenses/Expenses1.dart';
import 'package:petcare/Expenses/Expenses2.dart';
import 'package:petcare/Expenses/Expenses3.dart';

class ExpensesScreen extends StatefulWidget {
  const ExpensesScreen({super.key});

  @override
  State<ExpensesScreen> createState() => _ExpensesScreenState();
}

class _ExpensesScreenState extends State<ExpensesScreen> {
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
        Expenses1(),
        Expenses2(),
        Expenses3(),
      ],
    ));
  }
}
