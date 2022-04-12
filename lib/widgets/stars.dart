import 'package:flutter/material.dart';

import 'star.dart';

class Stars extends StatefulWidget {
  Stars({Key? key, required this.rate, required this.isComment}) : super(key: key);

  double rate;
  bool isComment;

  @override
  _StarsState createState() => _StarsState();
}

class _StarsState extends State<Stars> {

  List<double> staredUp = [0,0,0,0,0];

  starUp(double rate){
    int intRate = rate.floor();

    for(int i = 0; i<5; i++){
      if(i<intRate){
        staredUp[i] = 1;
      }else if(i==intRate){
        if(rate-intRate<0.5){
          staredUp[i] = 0;
        }else{
          staredUp[i] = 0.5;
        }
      }else{
        staredUp[i] = 0;
      }
    }
  }

  @override
  void initState() {
    starUp(widget.rate);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.fromLTRB(widget.isComment == true ? 0 : 20, 2, 0, 2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(widget.isComment == false ? "${widget.rate} " : "", style: TextStyle(fontWeight: FontWeight.bold, fontSize: widget.isComment == true ? height*0.015 : height*0.02),),
          Star(form: staredUp[0], isComment: widget.isComment),
          Star(form: staredUp[1], isComment: widget.isComment),
          Star(form: staredUp[2], isComment: widget.isComment),
          Star(form: staredUp[3], isComment: widget.isComment),
          Star(form: staredUp[4], isComment: widget.isComment),
        ],
      ),
    );
  }
}
