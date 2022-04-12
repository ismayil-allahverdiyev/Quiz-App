import 'package:flutter/material.dart';

class StreamContainer extends StatelessWidget {
  const StreamContainer({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: width*0.49,
        width: width*0.33,
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(25))
        ),
        child: Center(
          child: Container(
            height: width*0.47,
            width: width*0.31,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xffB4E1FF),
                    borderRadius: BorderRadius.all(Radius.circular(15))
                ),
                height: width*0.45,
                width: width*0.29,
                child: Padding(
                  padding:  EdgeInsets.fromLTRB(0, width*0.15, 0, 0),
                  child: Center(
                      child: CircleAvatar(
                          radius: width*0.1,
                          backgroundColor: Color(0xffF5FFC6),
                          child: CircleAvatar(
                            radius: width*0.09,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: width*0.08,
                              backgroundColor: Color(0xffC1FF9B),
                              backgroundImage: AssetImage("assets/images/profpic.jpg"),
                            ),
                          )
                      )
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}