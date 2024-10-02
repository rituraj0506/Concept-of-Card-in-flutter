// ignore_for_file: prefer_const_constructors

import 'package:first_app/module.dart/carddata.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
        width: screenWidth,
        height: screenHeight,
        child: Column(
          children: [
            const SizedBox(height: 40),
            Row(
              children: cardDataList.map((cardData) {
                return Container(
                  width: 300,
                  height: 200,
                  color: cardData.color,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            cardData.text1,
                            style: TextStyle(
                                color: Colors.grey[600], fontSize: 16),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            cardData.text2,
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            cardData.text3,
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            cardData.photo,
                            width: 100,
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ],
        ));
  }
}


// using GridView Builder Concept 
// ignore_for_file: prefer_const_constructors

// import 'package:first_app/module.dart/carddata.dart';
// import 'package:flutter/material.dart';

// class IntroPage extends StatelessWidget {
//   const IntroPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     final screenHeight = MediaQuery.of(context).size.height;
//     return Container(
//         width: screenWidth,
//         height: screenHeight,
//         child: Column(
//           children: [
//             const SizedBox(height: 40),
//             Expanded(
//               child: GridView.builder(
//                   itemCount: cardDataList.length,
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 4,
//                     childAspectRatio: 2.0,
//                   ),
//                   itemBuilder: (context, index) {
//                     final cardData = cardDataList[index];
//                     return Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Container(
//                         width: 200,
//                         height: 100,
//                         color: cardData.color,
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Text(
//                                   cardData.text1,
//                                   style: TextStyle(
//                                       color: Colors.grey[600], fontSize: 16),
//                                 ),
//                                 const SizedBox(height: 10),
//                                 Text(
//                                   cardData.text2,
//                                   style: TextStyle(
//                                       color: Colors.black, fontSize: 16),
//                                 ),
//                                 const SizedBox(height: 10),
//                                 Text(
//                                   cardData.text3,
//                                   style: TextStyle(
//                                       color: Colors.black, fontSize: 16),
//                                 ),
//                               ],
//                             ),
//                             Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Image.asset(
//                                   cardData.photo,
//                                   width: 100,
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     );
//                   }),
//             )
//           ],
//         ));
//   }
// }
