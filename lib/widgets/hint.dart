import 'package:flutter/material.dart';

class Hint extends StatelessWidget {
  const Hint({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: height*0.05,
          width: height*0.05,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/idea.png")
              )
          ),
        ),
        Text(
          "Hint",
          style: TextStyle(
              fontSize: height*0.022,
              fontWeight: FontWeight.w500,
              letterSpacing: 1.3
          ),
        ),
        SizedBox(
          width: 20,
        )
      ],
    );
  }
}