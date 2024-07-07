import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petcare/Apptheme/apptheme.dart';
import 'package:petcare/charts/chart_pie.dart';
import 'package:petcare/painter/painterTop.dart';

//make by Subhan Abbasi 19
class Expense extends StatefulWidget {
  const Expense({super.key});

  @override
  State<Expense> createState() => _ExpenseState();
}

class _ExpenseState extends State<Expense> {
  TextEditingController datecontroller = TextEditingController();
  var width, height;
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
          child: Column(
            children: [
              Apptheme.appBar("Expense", height, context, width),
              SizedBox(
                height: height * 0.71,
                width: width * 1,
                // color: Colors.amber,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Container(
                      height: height * 0.07,
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 1, color: Colors.grey))),
                      child: Row(
                        children: [
                          SizedBox(
                            width: width * 0.03,
                          ),
                          const Icon(
                            Icons.date_range_outlined,
                            size: 40,
                          ),
                          const Text(
                            textAlign: TextAlign.center,
                            "     Date",
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            width: width * 0.3,
                          ),
                          Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Container(
                              height: height * 0.075,
                              width: width * 0.3,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Apptheme.pinkcolor, width: 2),
                                //  color: Color.fromARGB(255, 252, 216, 205),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Center(
                                child: TextField(
                                  controller: datecontroller,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: " DD/MM/YYYY",
                                    hintStyle: GoogleFonts.inter(
                                        fontWeight: FontWeight.normal,
                                        color: const Color.fromARGB(
                                            255, 87, 86, 86),
                                        fontSize: width * 0.04),
                                  ),
                                  readOnly: true,
                                  onTap: () {
                                    _selectDate();
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: height * 0.07,
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 1, color: Colors.grey))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: width * 0.03,
                          ),
                          const Icon(
                            Icons.battery_charging_full_rounded,
                            size: 40,
                          ),
                          const Text(
                            textAlign: TextAlign.center,
                            "     Basic Supplies",
                            style: TextStyle(fontSize: 20),
                          ),
                          const Spacer(),
                          const Icon(Icons.arrow_forward_ios_rounded),
                          SizedBox(
                            width: width * 0.03,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: height * 0.07,
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 1, color: Colors.grey))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: width * 0.03,
                          ),
                          const Icon(
                            Icons.food_bank_outlined,
                            size: 40,
                          ),
                          const Text(
                            textAlign: TextAlign.center,
                            "     Food",
                            style: TextStyle(fontSize: 20),
                          ),
                          const Spacer(),
                          const Icon(Icons.arrow_forward_ios_rounded),
                          SizedBox(
                            width: width * 0.03,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: height * 0.07,
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 1, color: Colors.grey))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: width * 0.03,
                          ),
                          const Icon(
                            Icons.medical_information,
                            size: 40,
                          ),
                          const Text(
                            textAlign: TextAlign.center,
                            "     Medical Care",
                            style: TextStyle(fontSize: 20),
                          ),
                          const Spacer(),
                          const Icon(Icons.arrow_forward_ios_rounded),
                          SizedBox(
                            width: width * 0.03,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: height * 0.07,
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 1, color: Colors.grey))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: width * 0.03,
                          ),
                          const Icon(
                            Icons.medical_information,
                            size: 40,
                          ),
                          const Text(
                            textAlign: TextAlign.center,
                            "     Grooming",
                            style: TextStyle(fontSize: 20),
                          ),
                          const Spacer(),
                          const Icon(Icons.school),
                          SizedBox(
                            width: width * 0.03,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: height * 0.07,
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 1, color: Colors.grey))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: width * 0.03,
                          ),
                          const Icon(
                            Icons.work_history_outlined,
                            size: 40,
                          ),
                          const Text(
                            textAlign: TextAlign.center,
                            "     Training",
                            style: TextStyle(fontSize: 20),
                          ),
                          const Spacer(),
                          const Icon(Icons.arrow_forward_ios_rounded),
                          SizedBox(
                            width: width * 0.03,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: height * 0.07,
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 1, color: Colors.grey))),
                      child: Row(
                        children: [
                          SizedBox(
                            width: width * 0.03,
                          ),
                          const Icon(
                            Icons.attach_money,
                            size: 40,
                          ),
                          const Text(
                            textAlign: TextAlign.center,
                            "     Total",
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            width: width * 0.27,
                          ),
                          Container(
                            height: height * 0.05,
                            alignment: Alignment.centerRight,
                            width: width * 0.28,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              border: Border.all(
                                color: Apptheme.pinkcolor,
                                width: 2,
                              ),
                            ),
                            child: Text(
                              "SR     ",
                              style: TextStyle(color: Apptheme.pinkcolor),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Chartpie(),
                              ));
                        },
                        child: Card(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(27)),
                          child: Container(
                            alignment: Alignment.center,
                            height: height * 0.055,
                            width: width * 0.25,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 3, color: Apptheme.pinkcolor),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(27)),
                            child: Text(
                              "Generate",
                              style: GoogleFonts.coiny(fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                  ],
                ),
              ),
            ],
          )),
    ));
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
