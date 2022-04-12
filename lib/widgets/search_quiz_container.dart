import 'package:flutter/material.dart';
import 'package:quiz_app/pages/edit_page.dart';

class SearchQuizContainer extends StatelessWidget {

  bool? onTeacherPage;

  SearchQuizContainer({Key? key, required this.onTeacherPage}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 40),
      child: Card(
        elevation: 5,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        child: Stack(
          overflow: Overflow.visible,
          children: [
            SizedBox(
              height: width/4.5,
              width: width-50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: width/4.5,
                      width: width-230,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Adding and multiplication",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: height*0.025,
                              letterSpacing: 1.2,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            "data",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: height*0.018,
                                letterSpacing: 1.1,
                                fontStyle: FontStyle.italic
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> EditPage()));
                    },
                    child: Container(
                      height: width/7,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.orange,
                      ),
                      child: Center(child: Text(onTeacherPage == false ? "Add" : "Edit", style: TextStyle(color: Colors.white, fontSize: height*0.02, fontWeight: FontWeight.bold),)),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: -15,
                left: 8,
                child: Row(
                  children: [
                    Icon(Icons.style, color: Colors.blue, size: 30,),
                    Icon(Icons.style, color: Colors.orange, size: 30,),
                    Icon(Icons.style, color: Colors.red, size: 30,),
                  ],
                )
            )
          ],
        )
        // ListTile(
        //   title: Text(
        //       "Adding and multiplication",
        //     overflow: TextOverflow.ellipsis,
        //     style: TextStyle(
        //       fontSize: height*0.02,
        //       letterSpacing: 1.2
        //     ),
        //   ),
        //   subtitle: Text("data"),
        //   trailing: Container(
        //     height: 50,
        //     width: 150,
        //     decoration: BoxDecoration(
        //         borderRadius: BorderRadius.all(Radius.circular(10)),
        //       color: Colors.orange,
        //     ),
        //     child: Center(child: Text("Add", style: TextStyle(color: Colors.white, fontSize: height*0.017),)),
        //   ),
        // ),
      )
    );
  }
}

