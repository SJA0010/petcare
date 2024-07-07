import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petcare/loginsignup/login.dart';

class sign_up extends StatefulWidget {
  const sign_up({super.key});

  @override
  State<sign_up> createState() => _sign_upState();
}

class _sign_upState extends State<sign_up> {
  final _SignupformKey = GlobalKey<FormState>();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController cnfrmcontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  bool _passwordVisible = false;
  String _errorMessage = '';
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
              key: _SignupformKey,
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
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  height: height * 0.08,
                                  width: width * 0.014,
                                  //  color: Color.fromARGB(255, 54, 108, 244),
                                  child: Center(
                                      child: Icon(
                                    Icons.arrow_back_ios_new_outlined,
                                    size: width! * 0.055,
                                    color: Color.fromRGBO(255, 131, 93, 1.0),
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
                                          color:
                                              Color.fromRGBO(255, 131, 93, 1.0),
                                          fontSize: width! * 0.04,
                                        ),
                                      ))),
                                ),
                              ),
                            ],
                          )),
                      SizedBox(
                        height: height * 0.15,
                      ),
                      if (_errorMessage.isNotEmpty)
                        Text(
                          _errorMessage,
                          style: GoogleFonts.inter(
                              color: Color.fromARGB(255, 224, 18, 4),
                              fontSize: width! * 0.03),
                        ),
                      SizedBox(
                        height: height! * 0.02,
                      ),
                      Container(
                        height: height * 0.075,
                        width: width * 0.75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextFormField(
                          style: GoogleFonts.inter(
                              color: Color.fromARGB(255, 95, 94, 94),
                              fontSize: width! * 0.042),
                          cursorColor: Color.fromARGB(255, 135, 135, 135),
                          controller: namecontroller,
                          onChanged: (value) {
                            //  print(value);
                          },
                          validator: (text) {
                            // Check if this name field is empty or not
                            if (text == null || text.isEmpty) {
                              return 'Name is required';
                            }
                            if (text.length < 2) {
                              return 'Must be more than 3charater';
                            }

                            return null;
                          },
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(255, 131, 93, 1.0),
                                    width: 2)),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                width: 2,
                                color: Color.fromRGBO(255, 131, 93, 1.0),
                              ),
                            ),
                            fillColor: Color.fromRGBO(255, 131, 93, 1.0),
                            hintText: "Full Name",
                            hintStyle: GoogleFonts.inter(
                              fontSize: width! * 0.042,
                              color: Colors.grey,
                            ),
                            prefixIcon: Icon(
                              Icons.person_outline_sharp,
                              color: Color.fromRGBO(255, 131, 93, 1.0),
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
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextFormField(
                          style: GoogleFonts.inter(
                              color: Color.fromARGB(255, 95, 94, 94),
                              fontSize: width! * 0.042),
                          cursorColor: Color.fromARGB(255, 135, 135, 135),
                          controller: emailcontroller,
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
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(255, 131, 93, 1.0),
                                    width: 2)),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                width: 2,
                                color: Color.fromRGBO(255, 131, 93, 1.0),
                              ),
                            ),
                            hintText: "Email",
                            hintStyle: GoogleFonts.inter(
                              fontSize: width! * 0.042,
                              color: Colors.grey,
                            ),
                            prefixIcon: Icon(
                              Icons.mail_outlined,
                              color: Color.fromRGBO(255, 131, 93, 1.0),
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
                        decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(20),
                            // border: Border.all(
                            //     color: Color.fromRGBO(255, 131, 93, 1.0),
                            //     width: 2)
                            ),
                        child: TextFormField(
                          obscureText: !_passwordVisible,
                          style: GoogleFonts.inter(
                              color: Color.fromARGB(255, 95, 94, 94),
                              fontSize: width! * 0.042),
                          cursorColor: Color.fromARGB(255, 135, 135, 135),
                          controller: passwordcontroller,
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
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(255, 131, 93, 1.0),
                                      width: 2)),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  width: 2,
                                  color: Color.fromRGBO(255, 131, 93, 1.0),
                                ),
                              ),
                              hintText: "Password",
                              hintStyle: GoogleFonts.inter(
                                fontSize: width! * 0.042,
                                color: Colors.grey,
                              ),
                              prefixIcon: Icon(
                                Icons.lock_outline,
                                color: Color.fromRGBO(255, 131, 93, 1.0),
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
                        height: height * 0.04,
                      ),
                      Container(
                        height: height * 0.075,
                        width: width * 0.75,
                        decoration: BoxDecoration(),
                        child: TextFormField(
                          obscureText: !_passwordVisible,
                          style: GoogleFonts.inter(
                              color: Color.fromARGB(255, 95, 94, 94),
                              fontSize: width! * 0.042),
                          cursorColor: Color.fromARGB(255, 135, 135, 135),
                          controller: cnfrmcontroller,
                          validator: (text) {
                            if (text == null || text.isEmpty) {
                              return 'password required';
                            }
                            if (text.length < 8) {
                              return 'Must be more than 8 charater';
                            }
                            if (!RegExp(
                                    r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                                .hasMatch(text)) {
                              return "The password must contain at least 8 characters, an uppercase letter, a lowercase letter, a number and a symbol";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            fillColor: Color.fromRGBO(255, 131, 93, 1.0),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(255, 131, 93, 1.0),
                                    width: 2)),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                width: 2,
                                color: Color.fromRGBO(255, 131, 93, 1.0),
                              ),
                            ),
                            hintText: "Confirm Password",
                            hintStyle: GoogleFonts.inter(
                              fontSize: width! * 0.042,
                              color: Colors.grey,
                            ),
                            prefixIcon: Icon(
                              Icons.lock_outline,
                              color: Color.fromRGBO(255, 131, 93, 1.0),
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
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.05,
                      ),
                      InkWell(
                        onTap: () {
                          if (_SignupformKey.currentState!.validate()) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Log_in(),
                              ),
                            );
                          }
                        },
                        child: Container(
                          height: height * 0.07,
                          width: width * 0.55,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 131, 93, 1.0),
                              borderRadius: BorderRadius.circular(16)),
                          child: Center(
                              child: Text(
                            "Sign up",
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontSize: width! * 0.045),
                          )),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.05,
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
                            width: width * 0.6,
                            // color: Colors.amber,
                            child: Center(
                              child: Row(
                                children: [
                                  Text(
                                    "  Already have an account ?",
                                    style: GoogleFonts.inter(
                                        color:
                                            Color.fromRGBO(255, 131, 93, 1.0),
                                        fontSize: width! * 0.035),
                                  ),
                                  Text(
                                    " Log in",
                                    style: GoogleFonts.inter(
                                        color:
                                            Color.fromRGBO(255, 131, 93, 1.0),
                                        fontWeight: FontWeight.w600,
                                        fontSize: width! * 0.039),
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
