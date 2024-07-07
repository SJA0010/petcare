import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petcare/Apptheme/apptheme.dart';
import 'package:petcare/painter/painterTop.dart';

//make by Subhan Abbasi 11
class Medicalfive extends StatefulWidget {
  const Medicalfive({super.key});
  @override
  State<Medicalfive> createState() => _MedicalfiveState();
}

class _MedicalfiveState extends State<Medicalfive> {
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
              Apptheme.appBar("Medical Record", height, context, width),
              SizedBox(
                height: height * 0.71,
                width: width * 0.9,
                //   color: Colors.amber,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        height: height * 0.14,
                        width: width * 0.9,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                                width: 2, color: Apptheme.pinkcolor)),
                        child: Row(
                          children: [
                            SizedBox(
                                width: width * 0.2,
                                // color: Colors.amber,
                                child: const Image(
                                    image: AssetImage("images/svg/cat.png"))),
                            Center(
                              child: SizedBox(
                                width: width * 0.4,
                                height: height * 0.12,
                                // color: Colors.blue,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "    Name : Candy",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "    Gender : female",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "    Age : 1y 3m 11d",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "    Breed : Cat",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    SizedBox(
                      height: height * 0.08,
                      width: width * 0.8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: width * 0.25,
                            decoration: BoxDecoration(
                                border: Border.all(width: 1),
                                borderRadius: BorderRadius.circular(15)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Clinic name",
                                  style: TextStyle(
                                      color: Apptheme.pinkcolor,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Text(
                                  "PetVet",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: width * 0.25,
                            decoration: BoxDecoration(
                                border: Border.all(width: 1),
                                borderRadius: BorderRadius.circular(15)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Neutering",
                                  style: TextStyle(
                                      color: Apptheme.pinkcolor,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Text(
                                  "Yes",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: width * 0.25,
                            decoration: BoxDecoration(
                                border: Border.all(width: 1),
                                borderRadius: BorderRadius.circular(15)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Weight",
                                  style: TextStyle(
                                      color: Apptheme.pinkcolor,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Text(
                                  "4 kg",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.11,
                      width: width * 0.8,
                      //color: Colors.red,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            " Medication",
                            style: TextStyle(
                                fontSize: 17, color: Apptheme.pinkcolor),
                          ),
                          Container(
                            height: height * 0.08,
                            width: width * 0.8,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  15,
                                ),
                                border:
                                    Border.all(width: 1, color: Colors.grey)),
                            child: const Text(
                              "   Amoxicillin, Clavamox",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.11,
                      width: width * 0.8,
                      //color: Colors.red,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            " Medication",
                            style: TextStyle(
                                fontSize: 17, color: Apptheme.pinkcolor),
                          ),
                          Container(
                            height: height * 0.08,
                            width: width * 0.8,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  15,
                                ),
                                border:
                                    Border.all(width: 1, color: Colors.grey)),
                            child: const Text(
                              "   Amoxicillin, Clavamox",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.11,
                      width: width * 0.8,
                      //color: Colors.red,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            " Allergies",
                            style: TextStyle(
                                fontSize: 17, color: Apptheme.pinkcolor),
                          ),
                          Container(
                            height: height * 0.08,
                            width: width * 0.8,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  15,
                                ),
                                border:
                                    Border.all(width: 1, color: Colors.grey)),
                            child: const Text(
                              "   Protein allergy",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.05,
                      width: width * 0.8,
                      child: Row(
                        children: [
                          Container(
                            width: width * 0.3,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2, color: Apptheme.pinkcolor),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              children: [
                                const Icon(Icons.delete_outline_rounded),
                                Text("Delete Record",
                                    style: GoogleFonts.coiny(fontSize: 13))
                              ],
                            ),
                          ),
                          SizedBox(
                            width: width * .05,
                          ),
                          Container(
                            width: width * 0.3,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2, color: Apptheme.pinkcolor),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              children: [
                                const Icon(Icons.delete_outline_rounded),
                                Text("Update Record",
                                    style: GoogleFonts.coiny(fontSize: 13))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
    ));
  }
}
