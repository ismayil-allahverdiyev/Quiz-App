import 'package:flutter/material.dart';

class BadQuizContainer extends StatelessWidget {
  const BadQuizContainer({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 40),
      child: Card(
        elevation: 20,
        shadowColor: Colors.black,
        shape:const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(55))
        ),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xff2193b0),
                  Color(0xff6dd5ed),
                ],
              )
          ),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Text(
                                "from:",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.italic,
                                    fontSize: height*0.02,
                                    color: Colors.brown[800]
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: Text(
                                "Ismayil Allahverdiyev",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.italic,
                                    fontSize: height*0.02,
                                    color: Color(0xff102e4a)

                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Geography",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.italic,
                              fontSize: height*0.025,
                              letterSpacing: 1.5,
                              color: Color(0xff102e4a)
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Previous grade: 30%",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.italic,
                            fontSize: height*0.02,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Title",
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: height*0.04,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
              ),
              Positioned(
                  top: -60,
                  right: -60,
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(75)),
                      color: Color(0xffab87ff),
                    ),
                  )
              ),
              Positioned(
                  top: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: PopupMenuButton(
                        icon: Icon(Icons.more_vert, size: 40, color: Colors.white,),
                        itemBuilder: (context) => [
                          PopupMenuItem(
                            child: Text("Delete from study list"),
                            onTap: (){
                              print("deleted");
                            },
                          ),
                          PopupMenuItem(
                              child: Text("Share"),
                              onTap: (){
                                print("shared");
                              }
                          )
                        ]
                    ),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}

