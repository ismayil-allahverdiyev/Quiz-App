import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    print(width);

    return
      // CircleAvatar(
      // radius: width*0.1+112,
      // backgroundColor: Colors.grey[350],
      // child:  Center(
      //   child: CircleAvatar(
      //     radius: width*0.1+110,
      //     backgroundColor: Colors.white,
      //     child: Center(
      //       child: CircleAvatar(
      //         radius: width*0.1+40,
      //         backgroundColor: Colors.grey[350],
      //         child: Center(
      //           child: CircleAvatar(
      //             radius: width*0.1+38,
      //             backgroundColor: Color(0xffEDFFFC),
      //             child: Center(
      //               child:
                    CircleAvatar(
                      radius: width*0.1+8,
                      backgroundColor: Color(0xffF5FFC6),
                      child: Center(
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: width*0.1+4,
                          child: Center(
                            child: CircleAvatar(
                              backgroundColor: Color(0xffC1FF9B),
                              backgroundImage: AssetImage("assets/images/profpic.jpg"),
                              radius: width*0.1,
                            ),
                          ),
                        ),
                      ),
                    );
    //               ),
    //             ),
    //           ),
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}
