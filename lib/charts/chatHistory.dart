// ignore_for_file: prefer_typing_uninitialized_variables, file_names

import 'package:flutter/material.dart';
import 'package:petcare/Apptheme/apptheme.dart';
import 'package:petcare/painter/painterTop.dart';

import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

//make by Subhan Abbasi 38
class ChartHistory extends StatefulWidget {
  const ChartHistory({super.key});

  @override
  State<ChartHistory> createState() => _ChartHistoryState();
}

class _ChartHistoryState extends State<ChartHistory> {
  var height, width;
  @override
  Widget build(BuildContext context) {
    ItemScrollController itemScrollController = ItemScrollController();
    const scrollDuration = Duration(seconds: 1);
    void jumpTo(int index) => itemScrollController.scrollTo(
          index: index,
          duration: scrollDuration,
          curve: Curves.easeInOutCubic,
          alignment: 0,
        );
    var list = [
      const Data1(),
      const Data1(),
    ];

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
          child: Column(
            children: [
              Apptheme.appBar(
                  "Health Tracking Chart History", height, context, width),
              SizedBox(height: height * 0.015),
              Center(
                child: Container(
                  height: height * 0.6,
                  width: width * 0.85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Apptheme.pinkcolor, width: 2),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // const SizedBox(),
                            const Image(
                              image: AssetImage("images/money1.png"),
                            ),
                            Apptheme.largeText("Salma",
                                fontWeight: FontWeight.bold),
                            const SizedBox(),
                            const SizedBox(),
                            const SizedBox(),
                            const SizedBox(),
                            const SizedBox(),
                          ],
                        ),
                      ),
                      Divider(
                        color: Apptheme.pinkcolor,
                        height: 1,
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                                child: ScrollablePositionedList.builder(
                              padding: EdgeInsets.zero,
                              itemCount: list.length,
                              itemBuilder: (context, index) => list[index],
                              itemScrollController: itemScrollController,
                            )),
                            Container(
                              width: width * 0.002,
                              color: Apptheme.pinkcolor,
                            ),
                            SizedBox(
                              width: width * 0.1,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
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
                                      child: const Icon(
                                          size: 10,
                                          Icons.keyboard_arrow_down_sharp),
                                    ),
                                  ),
                                  // Scrollbar(
                                  //   child: ScrollablePositionedList.builder(
                                  //     padding: EdgeInsets.zero,
                                  //     itemCount: list1.length,
                                  //     itemBuilder: (context, index) =>
                                  //         list1[index],
                                  //     itemScrollController:
                                  //         itemScrollController1,
                                  //   ),
                                  // ),
                                  InkWell(
                                    onTap: () => jumpTo(2),
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
                                      child: const Icon(
                                          size: 10,
                                          Icons.keyboard_arrow_down_sharp),
                                    ),
                                  )
                                ],
                              ),
                              // color: Apptheme.pinkcolor,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: height * 0.01),
              Align(
                alignment: Alignment.center,
                child: Apptheme.button(
                    "Generate new chart", height, width * 2, null,
                    color: Apptheme.pinkcolor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Data1 extends StatefulWidget {
  const Data1({super.key});

  @override
  State<Data1> createState() => _Data1State();
}

class _Data1State extends State<Data1> {
  var height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return SizedBox(
      height: height * 0.6,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Apptheme.largeText("28/ 01/ 2023"),
          Divider(
            color: Apptheme.pinkcolor,
            height: 1,
          ),
          Apptheme.largeText("28/ 02/ 2023"),
          Divider(
            color: Apptheme.pinkcolor,
            height: 1,
          ),
          Apptheme.largeText("28/ 03/ 2023"),
          Divider(
            color: Apptheme.pinkcolor,
            height: 1,
          ),
          Apptheme.largeText("28/ 04/ 2023"),
          Divider(
            color: Apptheme.pinkcolor,
            height: 1,
          ),
          Apptheme.largeText("28/ 05/ 2023"),
          Divider(
            color: Apptheme.pinkcolor,
            height: 1,
          ),
          Apptheme.largeText("28/ 06/ 2023"),
          Divider(
            color: Apptheme.pinkcolor,
            height: 1,
          ),
          Apptheme.largeText("28/ 07/ 2023"),
          Divider(
            color: Apptheme.pinkcolor,
            height: 1,
          ),
          Apptheme.largeText("28/ 08/ 2023"),
          Divider(
            color: Apptheme.pinkcolor,
            height: 1,
          ),
          Apptheme.largeText("28/ 09/ 2023"),
        ],
      ),
    );
  }
}
