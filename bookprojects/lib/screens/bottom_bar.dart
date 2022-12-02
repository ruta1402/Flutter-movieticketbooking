import 'package:bookprojects/screens/home_screen.dart';
import 'package:bookprojects/screens/search_screen.dart';
import 'package:bookprojects/screens/profile_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:bookprojects/utils/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:bookprojects/screens/alltheatres_screen.dart';
import 'package:bookprojects/screens/signin_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar();

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    // const Text("Home"),
    const HomeScreen(),
    const SeachScreen(),
    const AllTheatreScreen(),
    //const Text("Profile"),
    // const ProfileScreen(),
    const ProfileScreen(),
    //const LoginScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          elevation: 10,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: primary,
          unselectedItemColor: const Color(0xffabb2be),
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
                label: "Tickets"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_person_accounts_regular),
                label: "Profile"),
          ]),
    );
  }
}
