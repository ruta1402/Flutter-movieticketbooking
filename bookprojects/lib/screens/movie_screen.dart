import 'dart:html';
import 'package:bookprojects/utils/app_layout.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bookprojects/utils/app_styles.dart';
import 'package:gap/gap.dart';
import 'package:bookprojects/utils/app_info_list.dart';
import 'package:bookprojects/screens/allmovies_screen.dart';

class MovieScreen extends StatelessWidget {
  final Map<String, dynamic> movie;

  const MovieScreen({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // print('Movie name ');
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: 400,
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
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Styles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/${movie['image']}'),
              ),
            ),
          ),
          const Gap(10),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AllMovieScreen()),
              );

              print("view all");
            },
            child: Text('${movie['name']}',
                style:
                    Styles.headLineStyle2.copyWith(color: Color(0xFFF4F6FD))),
          ),
          Text('${movie['description']}',
              style: Styles.headLineStyle4.copyWith(color: Styles.kakiColor)),
        ],
      ),
    );
  }
}

// Navigator.push(context,MaterialPageRoute(builder: (context) => BottomBar()));
