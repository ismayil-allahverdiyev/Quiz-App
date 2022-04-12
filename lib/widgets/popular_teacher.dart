import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopularTeacher extends StatelessWidget {
  const PopularTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Container(
                width: width*0.15+2,
                height: width*0.15+2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0xfffface9),
                ),
                child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    width: width*0.15,
                    height: width*0.15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xfffface4),
                    ),
                    child: Center(
                        child: Icon(
                          Icons.people,
                          color: Colors.white,
                        )
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "User Userov",
                    style: TextStyle(
                        fontSize: height*0.02,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                  Text(
                    "Teaches german",
                    style: TextStyle(
                        fontSize: height*0.02,
                        fontWeight: FontWeight.w300,
                        fontStyle: FontStyle.italic
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Positioned(
            right: 15,
            top: width*0.03,
            child: IconButton(
              onPressed: (){},
              icon: Icon(CupertinoIcons.add, size: 30,),
            )
        )
      ],
    );
  }
}