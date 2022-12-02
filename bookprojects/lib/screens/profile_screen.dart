import 'dart:html';
import 'package:bookprojects/screens/movie_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bookprojects/utils/app_styles.dart';
import 'package:bookprojects/utils/app_layout.dart';
import 'package:gap/gap.dart';
import 'package:bookprojects/utils/app_info_list.dart';
import 'package:bookprojects/screens/bottom_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:bookprojects/screens/signin_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Styles.primaryColor,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: EdgeInsets.fromLTRB(
              20, MediaQuery.of(context).size.height * 0.2, 20, 0),
          child: Column(children: [
            const Text("Profile",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 30,
            ),
            StreamBuilder(
                stream:
                    FirebaseFirestore.instance.collection("user").snapshots(),
                builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                        itemCount: snapshot.data!.docs.length,
                        shrinkWrap: true,
                        itemBuilder: (context, i) {
                          var data = snapshot.data!.docs[i];
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Username: ",
                                          style: TextStyle(
                                              fontSize: 22,
                                              color: Colors.white)),
                                      Text(data["username"],
                                          style: TextStyle(
                                              fontSize: 22,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                  const Gap(5),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Email: ",
                                          style: TextStyle(
                                              fontSize: 22,
                                              color: Colors.white)),
                                      Text(data["email"],
                                          style: TextStyle(
                                              fontSize: 22,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          );
                        });
                  } else {
                    return Scaffold(
                        body: Center(
                      child: Text('Error'),
                    ));
                  }
                })
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // style: FloatingActionButton.styleFrom(
        //   primary: Styles.primaryColor,
        // ),
        // child: Text("Logout"),
        onPressed: () {
          FirebaseAuth.instance.signOut().then((value) {
            print("Signed Out");
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignInScreen()));
          });
        },
        child: Icon(Icons.logout_rounded),
        foregroundColor: Colors.black,
        backgroundColor: Styles.bgColor,
      ),
    );
  }
}
