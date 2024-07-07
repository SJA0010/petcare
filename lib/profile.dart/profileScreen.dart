// ignore_for_file: avoid_print, prefer_typing_uninitialized_variables, file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petcare/controller/scrolcontroller.dart';
import 'package:petcare/profile.dart/profile1.dart';
import 'package:petcare/profile.dart/profile2.dart';
import 'package:petcare/profile.dart/profile3.dart';
import 'package:petcare/profile.dart/profile4.dart';
import 'package:petcare/profile.dart/profile5.dart';
import 'package:petcare/profile.dart/profile6.dart';
import 'package:petcare/profile.dart/profile7.dart';
import 'package:petcare/profile.dart/profile8.dart';
import 'package:petcare/profile.dart/profile9.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  var height, width;

  @override
  void initState() {
    Get.put(Scroll_Controller());
    super.initState();
  }

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
        Profile1(),
        Profile2(),
        Profile3(),
        Profile4(),
        Profile5(),
        Profile6(),
        Profile7(),
        Profile8(),
        Profile9(),
      ],
    ));
  }
}
