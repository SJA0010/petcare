import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petcare/homepage/homepage.dart';
import 'package:petcare/homepage/testscreen.dart';
import 'package:petcare/loginsignup/verify.dart';

class Log_in extends StatefulWidget {
  const Log_in({super.key});

  @override
  State<Log_in> createState() => _Log_inState();
}

class _Log_inState extends State<Log_in> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  final _loginupformKey = GlobalKey<FormState>();
  bool _passwordVisible = false;
  bool _check = false;

  int i = 0;
  //function is used to make sure that input met certain conditions
  bool isValidEmail(v) {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(v);
  }

  var height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: height! * 0.16,
              width: width! * 0.25,
              decoration: BoxDecoration(
                  color: Color.fromARGB(192, 253, 88, 38),
                  borderRadius: BorderRadius.only(
                      // topLeft: Radius.circular(radius),
                      bottomLeft: Radius.circular(10000),
                      bottomRight: Radius.circular(50))),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: height! * 0.1,
              width: width! * 0.45,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: height! * 0.08,
                    width: width! * 0.3,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(171, 135, 255, 249),
                        borderRadius: BorderRadius.only(
                            //topRight: ,
                            topLeft: Radius.circular(100),
                            bottomLeft: Radius.circular(10000),
                            bottomRight: Radius.circular(10000))),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Form(
              key: _loginupformKey,
              child: SingleChildScrollView(
                child: Container(
                  height: height,
                  width: width,
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: height * 0.07,
                      ),
                      Container(
                          height: height * 0.08,
                          width: width,
                          // color: Colors.red,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: height * 0.05,
                                width: width * 0.07,
                              ),
                              Container(
                                height: height * 0.08,
                                width: width * 0.014,
                                //  color: Color.fromARGB(255, 54, 108, 244),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Center(
                                      child: Icon(
                                    Icons.arrow_back_ios_new_outlined,
                                    size: width! * 0.055,
                                    color: Color.fromARGB(255, 128, 217, 213),
                                  )),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Center(
                                  child: Container(
                                      height: height * 0.08,
                                      width: width * 0.2,
                                      //color: Color.fromARGB(255, 54, 108, 244),
                                      child: Center(
                                          child: Text(
                                        "Back",
                                        style: GoogleFonts.inter(
                                          color: Color.fromARGB(
                                              255, 128, 217, 213),
                                          fontSize: width! * 0.035,
                                        ),
                                      ))),
                                ),
                              ),
                            ],
                          )),
                      SizedBox(
                        height: height * 0.1,
                      ),
                      Container(
                          height: height * 0.075,
                          width: width * 0.75,
                          decoration: BoxDecoration(
                              // color: Colors.amber
                              ),
                          child: Text(
                            "Log in",
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 128, 217, 213),
                                fontSize: width! * 0.065),
                          )),
                      SizedBox(
                        height: height * 0.06,
                      ),
                      Container(
                        height: height * 0.075,
                        width: width * 0.75,
                        child: TextFormField(
                          style: GoogleFonts.inter(
                              color: Color.fromARGB(255, 69, 69, 69)),
                          cursorColor: Colors.grey,
                          controller: passwordcontroller,
                          onChanged: (value) {
                            // print(value);
                          },
                          validator: (value) {
                            // Check if this field is empty
                            if (value == null || value.isEmpty) {
                              return 'Email is required';
                            }

                            // using regular expression
                            if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                              return "Invalid email,Please try again";
                            }

                            // the email is valid
                            return null;
                          },
                          decoration: InputDecoration(
                            fillColor: Color.fromARGB(255, 128, 217, 213),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 128, 217, 213),
                                    width: 2)),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                width: 2,
                                color: Color(
                                    0xFF95E8E4), // Change this color to yellow or your desired color
                              ),
                            ),
                            hintText: "Email",
                            hintStyle: GoogleFonts.inter(
                              fontSize: width! * 0.045,
                              color: Colors.grey,
                            ),
                            prefixIcon: Icon(
                              Icons.mail_outlined,
                              color: Color.fromARGB(255, 128, 217, 213),
                              size: width! * 0.08,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.04,
                      ),
                      Container(
                        height: height * 0.075,
                        width: width * 0.75,
                        child: TextFormField(
                          obscureText: !_passwordVisible,
                          style: GoogleFonts.inter(
                              color: Color.fromARGB(255, 73, 73, 73)),
                          cursorColor: Colors.grey,
                          controller: emailcontroller,
                          validator: (text) {
                            if (text == null || text.isEmpty) {
                              return 'password required';
                            }
                            if (text.length < 8) {
                              return 'Must contain atleast 8 charaters';
                            }
                            if (!RegExp(
                                    r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                                .hasMatch(text)) {
                              return "The password must contain at least 8 characters, an uppercase letter, a lowercase letter, a number and a symbol";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              fillColor: Color.fromARGB(255, 128, 217, 213),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                    color: Color.fromARGB(255, 128, 217, 213),
                                    width: 2,
                                  )),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 128, 217, 213),
                                    width:
                                        2 // Change this color to yellow or your desired color
                                    ),
                              ),
                              hintText: "Password",
                              hintStyle: GoogleFonts.inter(
                                fontSize: width! * 0.045,
                                color: Colors.grey,
                              ),
                              prefixIcon: Icon(
                                Icons.lock_outline,
                                color: Color.fromARGB(255, 128, 217, 213),
                                size: width! * 0.08,
                              ),
                              suffixIcon: InkWell(
                                  onTap: () {
                                    setState(() {
                                      _passwordVisible = !_passwordVisible;
                                    });
                                  },
                                  child: Icon(
                                    color: Color.fromARGB(255, 107, 107, 107),
                                    _passwordVisible
                                        ? Icons.visibility_off_outlined
                                        : Icons.visibility_outlined,
                                    size: width! * 0.06,
                                  ))),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Container(
                        height: height * 0.05,
                        width: width * 0.73,
                        // color: Colors.amber,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Home1(),
                                    ));
                              },
                              child: Text(
                                "Forget Password ?",
                                style: GoogleFonts.inter(
                                    color: Color.fromARGB(255, 128, 217, 213),
                                    fontWeight: FontWeight.w500,
                                    fontSize: width! * 0.04),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.055,
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      InkWell(
                        onTap: () {
                          // if (_loginupformKey.currentState!.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Homescreen(),
                            ),
                          );
                          //  }
                        },
                        child: Container(
                          height: height * 0.065,
                          width: width * 0.6,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 128, 217, 213),
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                              child: Text(
                            "Log in",
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontSize: width! * 0.045),
                          )),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.04,
                      ),
                      Center(
                        child: InkWell(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //       builder: (context) => login(),
                            //     ));
                          },
                          child: Container(
                            height: height * 0.07,
                            width: width * 0.65,
                            // color: Colors.amber,
                            child: Center(
                              child: Row(
                                children: [
                                  Text(
                                    "  Don't have an account ?",
                                    style: GoogleFonts.inter(
                                        color:
                                            Color.fromARGB(255, 128, 217, 213),
                                        fontSize: width! * 0.038),
                                  ),
                                  Text(
                                    " Sign Up",
                                    style: GoogleFonts.inter(
                                        color:
                                            Color.fromARGB(255, 128, 217, 213),
                                        fontWeight: FontWeight.w600,
                                        fontSize: width! * 0.042),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
