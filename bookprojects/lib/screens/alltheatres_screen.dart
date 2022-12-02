import 'dart:html';
import 'package:bookprojects/utils/app_layout.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bookprojects/utils/app_styles.dart';
import 'package:gap/gap.dart';
import 'package:bookprojects/utils/app_info_list.dart';
import 'package:bookprojects/screens/movie_screen.dart';
import 'package:bookprojects/screens/theatre_screen.dart';
import 'package:bookprojects/screens/bottom_bar.dart';

class AllTheatreScreen extends StatelessWidget {
  const AllTheatreScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hello!", style: Styles.headLineStyle3),
                        const Gap(2),
                        Text("Book Tickets", style: Styles.headLineStyle1),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/bookit.png")),
                      ),
                    ),
                  ],
                ),
                const Gap(40),
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: theatreList
                  .map((theatre) => TheatreScreen(theatre: theatre))
                  .toList(),
            ),
          ),
          //const BottomBar(),
        ],
      ),
    );
  }
}
