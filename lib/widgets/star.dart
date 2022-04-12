import 'package:flutter/material.dart';

class Star extends StatefulWidget {
  Star({Key? key, required this.form, required this.isComment}) : super(key: key);

  double form;
  bool isComment;

  @override
  _StarState createState() => _StarState();
}

class _StarState extends State<Star> {

  var icon;

  @override
  Widget build(BuildContext context) {
    if(widget.form==0){
      icon = Icon(Icons.star_outline, color: Color(0xffeea868), size: widget.isComment == true ? 20 :30,);
    }
    if(widget.form==0.5){
      icon = Icon(Icons.star_half_rounded, color: Color(0xffeea868), size: widget.isComment == true ? 20 :30,);
    }
    if(widget.form==1){
      icon = Icon(Icons.star_outlined, color: Color(0xffeea868), size: widget.isComment == true ? 20 :30,);
    }
    return icon;
  }
}
