import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petcare/mainpages/addpetpages.dart/petspage.dart';
import 'package:petcare/mainpages/chatbotpage.dart';
import 'package:petcare/mainpages/mappage.dart';
import 'package:petcare/mainpages/qrpage.dart';

class Home1 extends StatefulWidget {
  const Home1({super.key});

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  PageController pageController1 = PageController();
  int currentPage = 2;
  @override
  void initState() {
    super.initState();
    pageController1 = PageController(initialPage: currentPage);
  }

  var height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
              height: height! * 0.89,
              width: width,
              child: PageView(
                controller: pageController1,
                physics: const NeverScrollableScrollPhysics(),
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                children: const [
                  QRscreen(),
                  Petsscreen(),
                  // PageViewData(),
                  Mapsscreen(),
                  Chatbotscreen(),
                ],
              )),
          Container(
            height: height! * 0.11,
            width: width,
            color: const Color(0xff95E8E4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: width! * 0.05,
                ),
                InkWell(
                  onTap: () {
                    pageController1.jumpToPage(0);
                  },
                  child: SizedBox(
                    height: height! * 0.082,
                    width: width! * 0.12,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: height! * 0.04,
                          width: width,
                          child: SvgPicture.asset("assets/qrcode.svg"),
                          //    image: DecorationImage(image: AssetImage("assets/cat.png"))
                        ),
                        Text(
                          "QR",
                          style: GoogleFonts.coiny(
                              color: const Color(0xff005551),
                              fontSize: width! * 0.03),
                        ),
                        Container(
                          height: height! * 0.004,
                          width: width! * 0.085,
                          decoration: BoxDecoration(
                              color: currentPage == 0
                                  ? const Color(0xff005551)
                                  : const Color.fromARGB(0, 255, 255, 255),
                              borderRadius: BorderRadius.circular(50)),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: width! * 0.07,
                ),
                InkWell(
                  onTap: () {
                    pageController1.jumpToPage(1);
                  },
                  child: SizedBox(
                    height: height! * 0.082,
                    width: width! * 0.12,
                    //color: Color.fromARGB(255, 162, 36, 36),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: height! * 0.04,
                          width: width,
                          child: SvgPicture.asset("assets/pets.svg"),
                          //    image: DecorationImage(image: AssetImage("assets/cat.png"))
                        ),
                        Text(
                          "PETS",
                          style: GoogleFonts.coiny(
                              color: const Color(0xff005551),
                              fontSize: width! * 0.03),
                        ),
                        Container(
                          height: height! * 0.004,
                          width: width! * 0.1,
                          decoration: BoxDecoration(
                              color: currentPage == 1
                                  ? const Color(0xff005551)
                                  : const Color.fromARGB(0, 255, 255, 255),
                              borderRadius: BorderRadius.circular(50)),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: width! * 0.07,
                ),
                InkWell(
                  onTap: () {
                    pageController1.jumpToPage(2);
                  },
                  child: SizedBox(
                    height: height! * 0.082,
                    width: width! * 0.12,
                    //color: Color.fromARGB(255, 162, 36, 36),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: height! * 0.04,
                          width: width,
                          child: SvgPicture.asset("assets/home.svg"),
                          //    image: DecorationImage(image: AssetImage("assets/cat.png"))
                        ),
                        Text(
                          "HOME",
                          style: GoogleFonts.coiny(
                              color: const Color(0xff005551),
                              fontSize: width! * 0.03),
                        ),
                        Container(
                          height: height! * 0.004,
                          width: width! * 0.1,
                          decoration: BoxDecoration(
                              color: currentPage == 2
                                  ? const Color(0xff005551)
                                  : const Color.fromARGB(0, 255, 255, 255),
                              borderRadius: BorderRadius.circular(50)),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: width! * 0.07,
                ),
                InkWell(
                  onTap: () {
                    pageController1.jumpToPage(3);
                  },
                  child: SizedBox(
                    height: height! * 0.082,
                    width: width! * 0.12,
                    //color: Color.fromARGB(255, 162, 36, 36),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: height! * 0.04,
                          width: width,
                          child: SvgPicture.asset("assets/location.svg"),
                          //    image: DecorationImage(image: AssetImage("assets/cat.png"))
                        ),
                        Text(
                          "MAP",
                          style: GoogleFonts.coiny(
                              color: const Color(0xff005551),
                              fontSize: width! * 0.03),
                        ),
                        Container(
                          height: height! * 0.004,
                          width: width! * 0.085,
                          decoration: BoxDecoration(
                              color: currentPage == 3
                                  ? const Color(0xff005551)
                                  : const Color.fromARGB(0, 255, 255, 255),
                              borderRadius: BorderRadius.circular(50)),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: width! * 0.05,
                ),
                InkWell(
                  onTap: () {
                    pageController1.jumpToPage(4);
                  },
                  child: SizedBox(
                    height: height! * 0.082,
                    width: width! * 0.165,
                    //color: Color.fromARGB(255, 162, 36, 36),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: height! * 0.05,
                          width: width,
                          decoration: const BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                    height: height! * 0.025,
                                    width: width! * 0.06,
                                    child:
                                        SvgPicture.asset("assets/chatbot.svg"))
                              ]),
                          //    image: DecorationImage(image: AssetImage("assets/cat.png"))
                        ),
                        Text(
                          "CHATBOT",
                          style: GoogleFonts.coiny(
                              color: const Color(0xff005551),
                              fontSize: width! * 0.03),
                        ),
                        Container(
                          height: height! * 0.004,
                          width: width! * 0.155,
                          decoration: BoxDecoration(
                              color: currentPage == 4
                                  ? const Color(0xff005551)
                                  : const Color.fromARGB(0, 255, 255, 255),
                              borderRadius: BorderRadius.circular(50)),
                        )
                      ],
                    ),
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
