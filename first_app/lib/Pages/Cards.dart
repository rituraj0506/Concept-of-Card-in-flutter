import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  Cards({
    super.key,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.photo,
    required this.color,
  });

  final String text1;
  final String text2;
  final String text3;
  final String photo;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 200,
      color: color,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text1, // if class are stateful then widget.text1, // Access widget's properties
                style: TextStyle(color: Colors.grey[600], fontSize: 16),
              ),
              const SizedBox(height: 10),
              Text(
                text2,
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              const SizedBox(height: 10),
              Text(
                text3,
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                photo,
                width: 100,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

  // Row(
  //             children: [
  //               Cards(
  //                 text1: "Hello",
  //                 text2: "20",
  //                 text3: "ViewAll",
  //                 photo: 'assets/pimg1.png',
  //                 color: Color(0x80CFDFED),
  //               ),
           
  //             ],
  //           ),
