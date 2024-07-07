// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petcare/Apptheme/apptheme.dart';
import 'package:petcare/controller/scrolcontroller.dart';
import 'package:petcare/painter/painterTop.dart';

import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

//make by Subhan Abbasi 28
ItemScrollController itemScrollController = ItemScrollController();

const scrollDuration = Duration(seconds: 1);

class Profile2 extends StatefulWidget {
  const Profile2({super.key});

  @override
  State<Profile2> createState() => _Profile2State();
}

class _Profile2State extends State<Profile2> {
  var list = [const Fisrt(), const Second()];
  var height, width;

  @override
  void initState() {
    Get.put(Scroll_Controller());
    Future.delayed(const Duration(microseconds: 200), () {
      jumpTo(1);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Container(
        color: Colors.white,
        height: height,
        width: width,
        child: CustomPaint(
          painter: PainterTop(),
          child: SizedBox(
            height: height,
            width: width * 0.9,
            child: ListView(
              children: [
                Apptheme.appBar("My Profile", height, context, width),
                Container(
                    height: height * 0.16,
                    width: width * 0.27,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Apptheme.pinkcolor,
                        width: 2,
                      ),
                    ),
                    child: const Center(
                      child: CircleAvatar(
                        radius: 25,
                        child: Image(image: AssetImage("images/profile.png")),
                      ),
                    )),
                SizedBox(height: height * 0.02),
                Center(
                  child: Container(
                    height: height * 0.32,
                    width: width * 0.75,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Apptheme.pinkcolor)),
                    child: Center(
                      child: SizedBox(
                        height: height * 0.3,
                        width: width * 0.7,
                        child: ScrollablePositionedList.builder(
                          padding: EdgeInsets.zero,
                          itemCount: list.length,
                          itemBuilder: (context, index) => list[index],
                          itemScrollController: itemScrollController,
                        ),
                      ),
                    ),
                    // color: Colors.red,
                  ),
                ),
                SizedBox(height: height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Apptheme.button(
                        "Delete Profile", height, width, Icons.delete_outline),
                    Apptheme.button(
                        "Update Profile", height, width, Icons.edit_rounded),
                  ],
                ),
                SizedBox(height: height * 0.02),
                Align(
                  alignment: Alignment.center,
                  child: Apptheme.button(
                      "Log out", height, width, Icons.login_outlined,
                      color: Apptheme.bluecolor),
                ),
                SizedBox(height: height * 0.02),
              ],
            ),
          ),
        ));
  }
}

class Fisrt extends StatefulWidget {
  const Fisrt({super.key});

  @override
  State<Fisrt> createState() => _FisrtState();
}

class _FisrtState extends State<Fisrt> {
  var height, width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return GetBuilder<Scroll_Controller>(builder: (obj) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Apptheme.smalltext("Name", textColor: Colors.grey),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Apptheme.smalltext("Roaa", textColor: Colors.black),
                Apptheme.textformfield(
                    width: width * 0.25, height: height, isWeb: false),
                Container(
                  color: Colors.grey,
                  height: height * 0.035,
                  width: width * 0.005,
                ),
                Apptheme.textformfield(width: width * 0.25, height: height),
                // Apptheme.smalltext("Saleh", textColor: Colors.black),
              ],
            ),
          ),
          Divider(
            height: 10,
            color: Apptheme.pinkcolor,
          ),
          Apptheme.smalltext("Email",
              textColor: const Color.fromRGBO(158, 158, 158, 1)),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey)),
            child: Apptheme.textformfield(
                width: width,
                height: height,
                contentPadding: const EdgeInsets.fromLTRB(10.0, 0, 0, 10.0)),
          ),
          Divider(
            height: 10,
            color: Apptheme.pinkcolor,
          ),
          Apptheme.smalltext("Gender", textColor: Colors.grey),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    obj.updatedata(true);
                  },
                  child: SizedBox(
                    height: height * 0.02,
                    width: width * 0.00,
                    child: Transform.scale(
                      scale: 0.7,
                      child: Radio(
                        value: true,
                        groupValue: obj.isMale,
                        onChanged: (value) {
                          obj.updatedata(value!);
                        },
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Scroll_Controller.to.updatedata(true);
                  },
                  child: Apptheme.smalltext(
                    "Male",
                    textColor: Colors.black,
                  ),
                ),
                Container(
                  color: Colors.grey,
                  height: height * 0.035,
                  width: width * 0.005,
                ),
                GestureDetector(
                  onTap: () {
                    obj.updatedata(false);
                  },
                  child: SizedBox(
                    height: height * 0.02,
                    width: width * 0.01,
                    child: Transform.scale(
                      scale: 0.7,
                      child: Radio(
                        value: false,
                        groupValue: obj.isMale,
                        onChanged: (value) {
                          obj.updatedata(value!);
                        },
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    obj.updatedata(false);
                  },
                  child: Apptheme.smalltext(
                    "Female",
                    textColor: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Apptheme.pinkcolor,
            height: 10,
          ),
          Apptheme.smalltext("Age", textColor: Colors.grey),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: height * 0.045,
                width: width * 0.6,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(
                      Icons.add,
                      color: Colors.red,
                      size: 10,
                    ),
                    Apptheme.textformfield(
                      width: width * 0.5,
                      height: height,
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () => jumpTo(1),
                child: Container(
                  height: height * 0.04,
                  width: width * 0.06,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Apptheme.bluecolor,
                      width: 2,
                    ),
                  ),
                  child: const Icon(size: 10, Icons.keyboard_arrow_down_sharp),
                ),
              )
            ],
          ),
        ],
      );
    });
  }
}

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  var height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Apptheme.smalltext("Phone Number", textColor: Colors.grey),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: height * 0.045,
              width: width * 0.7,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey)),
              child: Apptheme.textformfield(
                width: width,
                height: height,
              ),
            ),
          ],
        ),
        Divider(
          height: 10,
          color: Apptheme.pinkcolor,
        ),
        Apptheme.smalltext("Password", textColor: Colors.grey),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: height * 0.045,
              width: width * 0.7,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey)),
              child: Apptheme.textformfield(
                width: width,
                height: height,
              ),
            ),
          ],
        ),
        Divider(
          height: 10,
          color: Apptheme.pinkcolor,
        ),
        Apptheme.smalltext("UserId", textColor: Colors.grey),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: height * 0.045,
              width: width * 0.6,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey)),
              child: Apptheme.textformfield(
                width: width * 0.7,
                height: height,
              ),
            ),
            InkWell(
              onTap: () => jumpTo(0),
              child: Container(
                height: height * 0.04,
                width: width * 0.06,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Apptheme.bluecolor,
                    width: 2,
                  ),
                ),
                child: const Icon(size: 10, Icons.keyboard_arrow_up_sharp),
              ),
            )
          ],
        ),
      ],
    );
  }
}

void jumpTo(int index) => itemScrollController.scrollTo(
      index: index,
      duration: scrollDuration,
      curve: Curves.easeInOutCubic,
      alignment: 0,
    );
