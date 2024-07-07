// ignore_for_file: must_be_immutable, file_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:petcare/Apptheme/apptheme.dart';

class CustomContainer extends StatefulWidget {
  List data1;
  Color color;
  int i;

  CustomContainer(
      {super.key, required this.color, required this.data1, required this.i});
  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  var height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return SizedBox(
      // color: Apptheme.pinkcolor,
      height: height * 0.15,
      // width: width * 0.15,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Apptheme.smalltext(widget.data1[widget.i]["time"].toString(),
              fontSize: 15.0),
          SizedBox(
            height: height * 0.1,
            width: width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: height * 0.15,
                  width: width * 0.01,
                  color: widget.color.withOpacity(0.5),
                ),
                Container(
                  width: width * 0.8,
                  height: height * 015,
                  decoration: BoxDecoration(
                      color: widget.color.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Container(
                        height: height * 0.15,
                        width: width * 0.02,
                        decoration: BoxDecoration(
                            color: widget.color.withOpacity(0.9),
                            borderRadius: const BorderRadius.horizontal(
                                left: Radius.circular(10))),
                      ),
                      Expanded(
                        child: Container(
                          decoration: const BoxDecoration(
                              // color: widget.color.withOpacity(0.5),
                              borderRadius: BorderRadius.horizontal(
                                  right: Radius.circular(10))),
                          child: Apptheme.largeText(
                              "   ${widget.data1[widget.i]["title"]}"
                                  .toString(),
                              fontSize: 15.0),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
