import 'package:bookprojects/model/movie_model.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import '../utils/app_styles.dart';
import '../utils/app_info_list.dart';
import 'package:gap/gap.dart';

class SeachScreen extends StatelessWidget {
  const SeachScreen({Key? key}) : super(key: key);

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
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Text("what do you want to see?\n ",
                    style: Styles.headLineStyle1),
                const Gap(10),
                Container(
                  padding: const EdgeInsets.all(3.5),
                ),
                Gap(20),
                Container(
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      hintText: 'Search movies',
                      prefixIcon:
                          Icon(FluentSystemIcons.ic_fluent_search_regular),
                      prefixIconColor: Colors.white,
                    ),
                  ),
                ),
                Gap(20),
                ElevatedButton(
                  onPressed: () {
                    // setState(() {
                    //   istapped = 'Button tapped';
                    // });
                  },
                  child: const Text('Search'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// class SeachScreen extends StatefulWidget {
//   //const SeachScreen({Key?key,required this.name}):super(key:key);
//   //final String name;
//   const SeachScreen();

//   @override
//   State<SeachScreen> createState() => _SearchScreenState();
// }

// class _SearchScreenState extends State<SeachScreen> {
//   void updateList(String value) {}

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Styles.bgColor,
//       body: ListView(
//         children: [
//           Container(
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             child: Column(
//               children: [
//                 const Gap(40),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text("Hello!", style: Styles.headLineStyle3),
//                         const Gap(2),
//                         Text("Book Tickets", style: Styles.headLineStyle1),
//                       ],
//                     ),
//                     Container(
//                       width: 50,
//                       height: 50,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         image: const DecorationImage(
//                             fit: BoxFit.cover,
//                             image: AssetImage("assets/images/bookit.png")),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             child: Column(
//               children: [
//                 const Gap(40),
//                 Text("what do you want to see?\n ",
//                     style: Styles.headLineStyle1),
//                 const Gap(10),
//                 Container(
//                   padding: const EdgeInsets.all(3.5),
//                 ),
//                 Gap(20),
//                 Container(
//                   child: TextField(
//                     decoration: InputDecoration(
//                       filled: true,
//                       fillColor: Colors.white,
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(12),
//                         borderSide: BorderSide.none,
//                       ),
//                       hintText: 'Search movies',
//                       prefixIcon:
//                           Icon(FluentSystemIcons.ic_fluent_search_regular),
//                       prefixIconColor: Colors.white,
//                     ),
//                   ),
//                 ),
//                 Gap(20),
//                 Container(
//                   child: ListView(),
//                 ),
//                 RaisedButton(
//                   padding: const EdgeInsets.all(20),
//                   textColor: Colors.white,
//                   color: primary,
//                   onPressed: () {
//                     // setState(() {
//                     //   istapped = 'Button tapped';
//                     // });
//                   },
//                   child: const Text('Search'),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
