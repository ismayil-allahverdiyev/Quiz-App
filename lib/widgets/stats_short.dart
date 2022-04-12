import 'package:flutter/material.dart';

class Stats extends StatelessWidget {
  const Stats({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(0, width/8, 0 ,0),
          child: Text(
            "Current Ranking",
            style: TextStyle(
                fontSize: height*0.025,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 20, 0 ,0),
          child: Text(
            "24#",
            style: TextStyle(
                fontSize: height*0.02,
                fontWeight: FontWeight.w400,
                color: Colors.grey[700]
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 15, 0 ,0),
          child: Text(
            "in the world",
            style: TextStyle(
                fontSize: height*0.02,
                fontWeight: FontWeight.w500,
                color: Colors.grey[900]
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                gradient: LinearGradient(
                  colors: [
                    Color(0xff22c1c3),
                    Color(0xfffdbb2d),
                  ]
                )
              ),
              width: width/2-30,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Open\nstatistics",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: height*0.02,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}