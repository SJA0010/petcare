import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petcare/homepage/homepage.dart';
import 'package:petcare/onboarding.dart/onboarding.dart';

class MyCustomSplashScreen extends StatefulWidget {
  const MyCustomSplashScreen({super.key});

  @override
  _MyCustomSplashScreenState createState() => _MyCustomSplashScreenState();
}

class _MyCustomSplashScreenState extends State<MyCustomSplashScreen>
    with TickerProviderStateMixin {
  double _fontSize = 2;
  double _containerSize = 1.5;
  double _textOpacity = 0.0;
  double _containerOpacity = 0.0;
  bool notificationinfo = false;
  AnimationController? _controller;
  Animation<double>? animation1;

  late final AnimationController _scaleController = AnimationController(
    duration: const Duration(seconds: 4),
    vsync: this,
  )..repeat(reverse: true);

  late final Animation<double> _scaleAnimation = CurvedAnimation(
    parent: _scaleController,
    curve: Curves.fastOutSlowIn,
  );

  @override
  void initState() {
    Future.delayed(Duration(seconds: 5), (() {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Onboardingscreens(),
          ));
    }));

    // TODO: implement initState

    super.initState();

    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 4));

    animation1 = Tween<double>(begin: 40, end: 20).animate(CurvedAnimation(
        parent: _controller!, curve: Curves.fastLinearToSlowEaseIn))
      ..addListener(() {
        setState(() {
          _textOpacity = 1.0;
        });
      });

    _controller!.forward();

    Timer(const Duration(seconds: 2), () {
      setState(() {
        _fontSize = 1.06;
      });
    });

    Timer(const Duration(seconds: 2), () {
      setState(() {
        _containerSize = 2;
        _containerOpacity = 1;
      });
    });

    Timer(Duration.zero, () {
      Timer(const Duration(seconds: 4), () {});
    });
  }

  @override

  // TODO: implement initState

  void dispose() {
    _controller!.dispose();
    _scaleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Container(
                height: height * 0.16,
                width: width * 0.52,
                decoration: BoxDecoration(
                    color: Color.fromARGB(195, 97, 253, 245),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(5000),
                        bottomLeft: Radius.circular(9000),
                        topLeft: Radius.circular(10))),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: height * 0.25,
                width: width * 0.6,
                decoration: BoxDecoration(
                    color: Color.fromARGB(192, 253, 88, 38),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(300),
                        bottomRight: Radius.circular(1000),
                        topRight: Radius.circular(10))),
              ),
            ),
            Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                    height: height * 0.1,
                    width: width * 0.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                        topRight: Radius.circular(5000),
                        // bottomRight: Radius.circular(300)
                      ),
                      color: Color.fromARGB(209, 149, 232, 228),
                    ))),
            Align(
                alignment: Alignment.bottomRight,
                child: Container(
                    height: height * 0.1,
                    width: width * 0.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(100),
                        topLeft: Radius.circular(5000),
                        // bottomRight: Radius.circular(300)
                      ),
                      color: Color.fromARGB(192, 253, 88, 38),
                    ))),
            Column(
              children: [
                AnimatedContainer(
                    duration: const Duration(milliseconds: 2000),
                    curve: Curves.fastLinearToSlowEaseIn,
                    height: height / _fontSize),
                AnimatedOpacity(
                    duration: const Duration(milliseconds: 1000),
                    opacity: _textOpacity,
                    child: Text(
                      "PET_THE_VET",
                      style: GoogleFonts.coiny(
                          color: Color.fromRGBO(255, 131, 93, 1.0),
                          fontSize: width * 0.025,
                          fontWeight: FontWeight.bold),
                    )),
              ],
            ),
            Center(
              child: ScaleTransition(
                scale: _scaleAnimation,
                child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 2000),
                    curve: Curves.fastLinearToSlowEaseIn,
                    opacity: _containerOpacity,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 2000),
                      curve: Curves.fastLinearToSlowEaseIn,
                      height: width / _containerSize,
                      width: width / _containerSize,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        //  color: Colors.amber,
                        image: const DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage('assets/mainlogo.jpg'),
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      // child: SvgPicture.asset(
                      //   "assets/mainlogo.png",
                      //   fit: BoxFit.contain,
                      //   height: height,
                      //   width: width,
                      // ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PageTransition extends PageRouteBuilder {
  final Widget page;

  PageTransition(this.page)
      : super(
          pageBuilder: (context, animation, anotherAnimation) => page,
          transitionDuration: const Duration(milliseconds: 2000),
          transitionsBuilder: (context, animation, anotherAnimation, child) {
            animation = CurvedAnimation(
              curve: Curves.fastLinearToSlowEaseIn,
              parent: animation,
            );
            return Align(
              alignment: Alignment.bottomCenter,
              child: SizeTransition(
                sizeFactor: animation,
                axisAlignment: 0,
                child: page,
              ),
            );
          },
        );
}
