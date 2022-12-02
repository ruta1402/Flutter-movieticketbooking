import 'dart:html';
import 'package:bookprojects/utils/app_layout.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bookprojects/utils/app_styles.dart';
import 'package:gap/gap.dart';
import 'package:bookprojects/utils/app_info_list.dart';
import 'package:bookprojects/screens/allmovies_screen.dart';

class TheatreScreen extends StatelessWidget {
  final Map<String, dynamic> theatre;

  const TheatreScreen({Key? key, required this.theatre}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // print('Movie name ');
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: 100,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 20,
              spreadRadius: 5,
            )
          ]),
      child: Column(
        children: [
          const Gap(10),
          Text('${theatre['name']}',
              style: Styles.headLineStyle2.copyWith(color: Color(0xFFF4F6FD))),
          Text('${theatre['place']}',
              style: Styles.headLineStyle4.copyWith(color: Styles.kakiColor)),
        ],
      ),
    );
  }
}
