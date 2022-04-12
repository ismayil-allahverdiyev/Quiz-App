import 'dart:math';
import 'package:flutter/cupertino.dart';

class GradientColorPalette extends ChangeNotifier{

  List<List<Color>> colorGradients = [
    [Color(0xff22c1c3), Color(0xfffdbb2d)],
    [Color(0xffee9ca7), Color(0xffffdde1)],
    [Color(0xff2193b0), Color(0xff6dd5ed)],
    [Color(0xff12c2e9), Color(0xffc471ed)],
    [Color(0xffc471ed), Color(0xfff64f59)],
  ];

  List<int> numbers = [];

  Random random = Random();


  List<Color> getColorPalette(){

    if(numbers.length == 4) {
      numbers.clear();
    }

    int number = random.nextInt(4);


    while(numbers.contains(number)){
      number = random.nextInt(4);
    }

    numbers.add(number);

    return colorGradients[number];
  }
}