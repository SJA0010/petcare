// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:petcare/Apptheme/apptheme.dart';
import 'package:petcare/Expenses/ExpensesScreen.dart';
import 'package:petcare/Remainders/RemindersScreen.dart';
import 'package:petcare/calendar/CalendarScreen.dart';
import 'package:petcare/charts/chatHistory.dart';
import 'package:petcare/profile.dart/profileScreen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  var height, width;
  int _selectedIndex = 0;
  final _screen = [
    // const PredictionSystem(),
    const ExpensesScreen(),
    const ChartHistory(),
    const CalendarScreen(),
    const RemindersScreen(),
    const ProfileScreen()
    // HomeScreen(),
    // MessagesScreen(),
    // ScheduleScreen(),
    // SettingsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: _screen[_selectedIndex],
      bottomNavigationBar: SizedBox(
        height: 70,
        child: BottomNavigationBar(
          backgroundColor: Apptheme.bluecolor,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Apptheme.greencolor,
          unselectedItemColor: Colors.black26,
          landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
          // showUnselectedLabels: false,
          unselectedFontSize: 12,
          selectedFontSize: 10,

          selectedLabelStyle:
              const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: CircleAvatar(
                  radius: 17,
                  backgroundColor: Apptheme.greencolor,
                  child: const Icon(
                    Icons.qr_code_scanner_rounded,
                    color: Colors.white,
                  )),
              label: "QR",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'images/svg/Vector.svg',
                //  height: 100,
                //  width: 70,
              ),
              label: "PETS",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "HOME",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.location_on_outlined),
              label: "MAP",
            ),
            BottomNavigationBarItem(
              icon: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 17,
                child: SvgPicture.asset(
                  'images/svg/Vector (1).svg',
                  //  height: 100,
                  //  width: 70,
                ),
              ),
              label: "CHATBOT",
            ),
          ],
        ),
      ),
    );
  }
}
