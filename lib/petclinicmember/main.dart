import 'package:flutter/material.dart';
import 'package:petcare/Apptheme/apptheme.dart';
import 'package:petcare/painter/painterTop.dart';

class PetClinicsNumbers1 extends StatefulWidget {
  const PetClinicsNumbers1({super.key});
//make by Subhan Abbasi 7
  @override
  State<PetClinicsNumbers1> createState() => _PetClinicsNumbers1State();
}

class _PetClinicsNumbers1State extends State<PetClinicsNumbers1> {
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
              Apptheme.appBar("Pet Clinics numbers", height, context, width),
              SizedBox(
                height: height * 0.7,
                width: width * 0.8,
                // color: Colors.amber,
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: width * 0.7,
                        ),
                        Container(
                          child: Container(
                            height: height * 0.09,
                            width: width * 0.09,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(width: 1),
                                shape: BoxShape.circle),
                            child: const Icon(
                              Icons.more_horiz_outlined,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.05,
                    ),
                    SizedBox(
                      // color: Colors.red,
                      height: height * 0.5,
                      width: width * 0.9,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Oz Pets Clinic",
                                style: TextStyle(
                                    fontSize: 17.5,
                                    color: Colors.grey[600],
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "03317364550",
                                  style: TextStyle(
                                      fontSize: 17.5,
                                      color: Colors.grey[600],
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Oka Veterinary Clinic",
                                style: TextStyle(
                                    fontSize: 17.5,
                                    color: Colors.grey[600],
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "03317364550",
                                  style: TextStyle(
                                      fontSize: 17.5,
                                      color: Colors.grey[600],
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Ran Veterinary Clinic",
                                style: TextStyle(
                                    fontSize: 17.5,
                                    color: Colors.grey[600],
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "03317364550",
                                  style: TextStyle(
                                      fontSize: 17.5,
                                      color: Colors.grey[600],
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Mercy Paws Pets",
                                style: TextStyle(
                                    fontSize: 17.5,
                                    color: Colors.grey[600],
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "03317364550",
                                  style: TextStyle(
                                      fontSize: 17.5,
                                      color: Colors.grey[600],
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Maya Vet Clinic & pet shop",
                                style: TextStyle(
                                    fontSize: 17.5,
                                    color: Colors.grey[600],
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "03317364550",
                                  style: TextStyle(
                                      fontSize: 17.5,
                                      color: Colors.grey[600],
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Essential care Clinic",
                                style: TextStyle(
                                    fontSize: 17.5,
                                    color: Colors.grey[600],
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "03317364550",
                                  style: TextStyle(
                                      fontSize: 17.5,
                                      color: Colors.grey[600],
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "International Animal Care",
                                style: TextStyle(
                                    fontSize: 17.5,
                                    color: Colors.grey[600],
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "03317364550",
                                  style: TextStyle(
                                      fontSize: 17.5,
                                      color: Colors.grey[600],
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Hadir Veternity Pet Clinic",
                                style: TextStyle(
                                    fontSize: 17.5,
                                    color: Colors.grey[600],
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "03317364550",
                                  style: TextStyle(
                                      fontSize: 17.5,
                                      color: Colors.grey[600],
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    ));
  }
}
