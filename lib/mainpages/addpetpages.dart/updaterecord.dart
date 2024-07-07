import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petcare/mainpages/addpetpages.dart/Mypetsscreen.dart';

class Updaterecordscreen extends StatefulWidget {
  const Updaterecordscreen({super.key});

  @override
  State<Updaterecordscreen> createState() => _UpdaterecordscreenState();
}

class _UpdaterecordscreenState extends State<Updaterecordscreen> {
  @override
  String selectedName = 'Select'; // Initial selected value
  TextEditingController valuecontroller = TextEditingController();
  TextEditingController datecontroller = TextEditingController();
  void showpopupselectimage(BuildContext contex) {
    showDialog(
        context: contex,
        builder: (BuildContext contex) {
          return SimpleDialog(
            backgroundColor: Color.fromARGB(255, 252, 187, 167),
            title: Center(
              child: Text(
                'Upload Your Pet image',
                style: GoogleFonts.coiny(
                  color: Color.fromARGB(255, 75, 75, 75),
                ),
              ),
            ),
            children: [
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.image_outlined,
                        color: Colors.grey.shade200,
                        size: width! * 0.065,
                      ),
                      Text(
                        'Gallery',
                        style: GoogleFonts.coiny(
                            color: Color.fromARGB(255, 75, 75, 75),
                            fontSize: width! * 0.035),
                      ),
                    ],
                  ),
                  // child:
                ),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.grey.shade200,
                        size: width! * 0.065,
                      ),
                      Text(
                        'Camera',
                        style: GoogleFonts.coiny(
                            color: Color.fromARGB(255, 75, 75, 75),
                            fontSize: width! * 0.035),
                      ),
                    ],
                  ),
                  // child:
                ),
              ),
            ],
          );
        });
  }

  var height, width;
  Widget build(BuildContext context) {
    final List<String> items = [
      'Breed',
      'Persian',
      'American',
      'German',
      'Big cat'
    ];
    final List<String> items2 = [
      'Gender',
      'Male',
      'Female',
    ];
    String selectedValue = items[0];
    String selectedValue1 = items[0];
    //    void initState() {
    //   super.initState();
    //   selectedValue = items.first; // Initialize selectedValue with the first item
    // }
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(children: [
        // Align(
        //     alignment: Alignment.bottomRight,
        //     child: Container(
        //         height: height! * 0.2,
        //         width: width! * 0.6,
        //         decoration: BoxDecoration(
        //           borderRadius: BorderRadius.only(
        //             topRight: Radius.circular(1000),
        //             topLeft: Radius.circular(5000),
        //             // bottomRight: Radius.circular(300)
        //           ),
        //           color: Color.fromARGB(192, 253, 88, 38),
        //         ))),
        Align(
          alignment: Alignment.bottomRight,
          child: Container(
            height: height! * 0.4,
            width: width! * 0.3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: height! * 0.14,
                  width: width! * 0.17,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(192, 253, 88, 38),
                  ),
                )
              ],
            ),
          ),
        ),
        Align(
            alignment: Alignment.bottomLeft,
            child: Container(
                height: height! * 0.1,
                width: width! * 0.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(5000),
                    // bottomRight: Radius.circular(300)
                  ),
                  color: Color.fromARGB(209, 149, 232, 228),
                ))),

        // Align(
        //     alignment: Alignment.bottomLeft,
        //     child: Container(
        //         height: height! * 0.17,
        //         width: width! * 0.45,
        //         decoration: BoxDecoration(
        //           borderRadius: BorderRadius.only(
        //             topLeft: Radius.circular(1000),
        //             topRight: Radius.circular(5000),
        //             // bottomRight: Radius.circular(300)
        //           ),
        //           color: Color.fromARGB(209, 149, 232, 228),
        //         ))),
        Align(
          alignment: Alignment.bottomRight,
          child: Container(
            height: height! * 0.6,
            width: width! * 0.35,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: height! * 0.05,
                  width: width! * 0.1,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF95E8E4),
                  ),
                )
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Container(
            height: height! * 0.16,
            width: width! * 0.52,
            decoration: BoxDecoration(
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
            height: height! * 0.25,
            width: width! * 0.6,
            decoration: BoxDecoration(
                color: Color.fromARGB(192, 253, 88, 38),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(300),
                    bottomRight: Radius.circular(1000),
                    topRight: Radius.circular(10))),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            height: height!,
            width: width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: height * 0.05,
                ),
                Container(
                  height: height * 0.1,
                  width: width,
                  //  color: Color.fromARGB(255, 121, 30, 219),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: width * 0.05,
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
                              color: Color(0xff95E8E4),
                              size: width! * 0.045,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.05,
                      ),
                      Container(
                          height: height * 0.1,
                          width: width * 0.7,
                          //  color: Color.fromARGB(255, 30, 232, 90),
                          child: Center(
                            child: Text(
                              "UPDATE RECORD",
                              style: GoogleFonts.coiny(
                                  //foreground: Paint()..color = Colors.white..style = PaintingStyle.stroke..strokeWidth = 1.0,
                                  fontWeight: FontWeight.normal,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: width * 0.07),
                            ),
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.1,
                ),
                Container(
                    height: height * 0.08,
                    width: width * 0.93,
                    // color: Colors.amber,
                    child: Center(
                      child: Text(
                        "Please  enter  the  following  information \n regarding your pet:",
                        style: GoogleFonts.coiny(
                            // fontWeight: FontWeight.normal,
                            color: Color(0xffC36060),
                            fontSize: width * 0.04),
                      ),
                    )),
                SizedBox(
                  height: height * 0.025,
                ),
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                      height: height * 0.08,
                      width: width * 0.9,
                      decoration: BoxDecoration(
                        color: Color(0xffFF835D),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: height! * 0.07,
                            width: width! * 0.7,
                            child: TextFormField(
                              style: GoogleFonts.coiny(
                                  color: Color.fromARGB(255, 75, 75, 75),
                                  fontSize: width! * 0.042),
                              cursorColor: Color.fromARGB(255, 135, 135, 135),
                              //   controller: namecontroller,
                              // onChanged: (value) {
                              //   //  print(value);
                              // },
                              // validator: (text) {
                              //   // Check if this name field is empty or not
                              //   if (text == null || text.isEmpty) {
                              //     return 'Name is required';
                              //   }
                              //   if (text.length < 2) {
                              //     return 'Must be more than 3charater';
                              //   }

                              //   return null;
                              // },
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                fillColor: Color.fromRGBO(255, 131, 93, 1.0),
                                hintText: "Name",
                                hintStyle: GoogleFonts.coiny(
                                  fontSize: width! * 0.042,
                                  color: Color.fromARGB(255, 68, 67, 67),
                                ),
                              ),
                            ),
                          )
                        ],
                      )),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Container(
                  height: height * 0.085,
                  width: width * 0.92,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Container(
                          height: height * 0.075,
                          width: width * 0.43,
                          decoration: BoxDecoration(
                            color: Color(0xffFFA083),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                icon: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: Colors.white,
                                ),
                                iconSize: width! * 0.06,

                                value: selectedValue,
                                onChanged: (String? newValue) {
                                  if (newValue != null) {
                                    setState(() {
                                      selectedValue = newValue;
                                    });
                                  }
                                },
                                // Generate dropdown items based on the items list
                                items: items.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Center(
                                      child: Text(
                                        value,
                                        style: GoogleFonts.coiny(
                                          fontSize: width! * 0.042,
                                          color:
                                              Color.fromARGB(255, 68, 67, 67),
                                        ),
                                      ),
                                    ),
                                    // Display text for the dropdown item
                                  );
                                }).toList(),
                                dropdownColor:
                                    Color.fromARGB(255, 251, 175, 151),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Container(
                          height: height * 0.085,
                          width: width * 0.43,
                          decoration: BoxDecoration(
                            color: Color(0xffFFA083),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: TextFormField(
                            style: GoogleFonts.coiny(
                                color: Color.fromARGB(255, 86, 86, 86),
                                fontSize: width! * 0.042),
                            cursorColor: Color.fromARGB(255, 75, 75, 75),
                            // controller: namecontroller,

                            decoration: InputDecoration(
                                border: InputBorder.none,
                                fillColor: Color.fromRGBO(255, 131, 93, 1.0),
                                hintText: "Species",
                                hintStyle: GoogleFonts.coiny(
                                  fontSize: width! * 0.042,
                                  color: Color.fromARGB(255, 68, 67, 67),
                                ),
                                prefix: SizedBox(
                                  width: width! * 0.13,
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.015,
                ),
                Container(
                  height: height * 0.085,
                  width: width * 0.92,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Container(
                          height: height * 0.085,
                          width: width * 0.29,
                          decoration: BoxDecoration(
                            color: Color(0xffFFC7B5),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: ButtonTheme(
                              alignedDropdown: true,
                              child: DropdownButton<String>(
                                value: selectedName,
                                icon: Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                                iconSize: width! * 0.05,
                                iconDisabledColor:
                                    Color.fromARGB(255, 72, 71, 71),
                                iconEnabledColor:
                                    Color.fromARGB(255, 72, 71, 71),
                                style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: width! * 0.042,
                                ),
                                dropdownColor:
                                    Color.fromARGB(255, 255, 195, 176),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    selectedName = newValue!;
                                  });
                                },
                                items: <String>[
                                  'Select',
                                  'Male',
                                  'Female'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Container(
                                      width: width * 0.18,
                                      child: Text(
                                        value,
                                        style: GoogleFonts.coiny(
                                          fontSize: width! * 0.042,
                                          color:
                                              Color.fromARGB(255, 68, 67, 67),
                                        ),
                                      ),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Container(
                            height: height * 0.075,
                            width: width * 0.28,
                            decoration: BoxDecoration(
                              color: Color(0xffFFC7B5),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                                child: TextFormField(
                              style: GoogleFonts.coiny(
                                  color: Color.fromARGB(255, 86, 86, 86),
                                  fontSize: width! * 0.042),
                              cursorColor: Color.fromARGB(255, 75, 75, 75),
                              // controller: namecontroller,

                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  fillColor: Color.fromRGBO(255, 131, 93, 1.0),
                                  hintText: "Height",
                                  hintStyle: GoogleFonts.coiny(
                                    fontSize: width! * 0.042,
                                    color: Color.fromARGB(255, 68, 67, 67),
                                  ),
                                  prefix: SizedBox(
                                    width: width! * 0.07,
                                  )),
                            ))),
                      ),
                      Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Container(
                          height: height * 0.075,
                          width: width * 0.28,
                          decoration: BoxDecoration(
                            color: Color(0xffFFC7B5),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: TextFormField(
                            style: GoogleFonts.coiny(
                                color: Color.fromARGB(255, 86, 86, 86),
                                fontSize: width! * 0.042),
                            cursorColor: Color.fromARGB(255, 75, 75, 75),
                            // controller: namecontroller,

                            decoration: InputDecoration(
                                border: InputBorder.none,
                                fillColor: Color.fromRGBO(255, 131, 93, 1.0),
                                hintText: "Weight",
                                hintStyle: GoogleFonts.coiny(
                                  fontSize: width! * 0.042,
                                  color: Color.fromARGB(255, 68, 67, 67),
                                ),
                                prefix: SizedBox(
                                  width: width! * 0.07,
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Container(
                  height: height * 0.085,
                  width: width * 0.92,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Container(
                          height: height * 0.075,
                          width: width * 0.43,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 252, 216, 205),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: TextField(
                              controller: datecontroller,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  labelText: "DOB",
                                  labelStyle: GoogleFonts.coiny(
                                      fontWeight: FontWeight.normal,
                                      color: Color.fromARGB(255, 87, 86, 86),
                                      fontSize: width * 0.05),
                                  prefixIcon: Icon(
                                    Icons.calendar_month,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    size: width! * 0.05,
                                  )),
                              readOnly: true,
                              onTap: () {
                                _selectDate();
                              },
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          showpopupselectimage(context);
                        },
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Container(
                              height: height * 0.085,
                              width: width * 0.43,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 252, 216, 205),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 10),
                                      child: Text(
                                        "Picture",
                                        style: GoogleFonts.coiny(
                                            fontWeight: FontWeight.normal,
                                            color:
                                                Color.fromARGB(255, 84, 84, 84),
                                            fontSize: width * 0.05),
                                      ),
                                    ),
                                    SizedBox(
                                      width: width! * 0.02,
                                    ),
                                    Icon(
                                      Icons.link_rounded,
                                      color: Colors.white,
                                      size: width! * 0.05,
                                    )
                                  ],
                                ),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Container(
                  height: height * 0.075,
                  width: width * 0.9,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                            height: height * 0.075,
                            width: width * 0.43,
                            decoration: BoxDecoration(
                              color: Color(0xFF95E8E4),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Text(
                                "UPDATE",
                                style: GoogleFonts.coiny(
                                    fontWeight: FontWeight.normal,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: width * 0.05),
                              ),
                            )),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                            height: height * 0.075,
                            width: width * 0.43,
                            decoration: BoxDecoration(
                              color: Color(0xFF95E8E4),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Text(
                                "CANCEL",
                                style: GoogleFonts.coiny(
                                    fontWeight: FontWeight.normal,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: width * 0.06),
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
                SizedBox(),
              ],
            ),
          ),
        ),
      ]),
    );
  }

  Future<void> _selectDate() async {
    DateTime? _picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2100));
    if (_picked != null) {
      datecontroller.text = _picked.toString().split(" ")[0];
    }
  }
}
