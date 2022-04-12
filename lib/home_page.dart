import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/providers/colors.dart';
import 'package:quiz_app/widgets/bad_quiz_container.dart';
import 'package:quiz_app/widgets/popular_teacher.dart';
import 'package:quiz_app/widgets/continue_quiz_container.dart';

import 'widgets/profile_avatar.dart';
import 'widgets/stream_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {


    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              overflow: Overflow.visible,
              children: [
                Positioned(
                  top: width*0.05,
                    right: 20,
                    child: ProfileAvatar()
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Padding(
                      padding: EdgeInsets.fromLTRB(width/16, width*0.1, 20, 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                              "1245",
                            style: TextStyle(
                                fontSize: height*0.02,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                            child: Container(
                              height: height*0.04,
                              width: height*0.04,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/images/coin.png")
                                  )
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(width/32, width*0.1, 20, 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "5",
                            style: TextStyle(
                                fontSize: height*0.02,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                            child: Container(
                              height: height*0.04,
                              width: height*0.04,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/images/heart.png")
                                  )
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),Padding(
                      padding: EdgeInsets.fromLTRB(width/32, width*0.1, 20, 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "5",
                            style: TextStyle(
                                fontSize: height*0.02,
                                fontWeight: FontWeight.bold

                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                            child: Container(
                              height: height*0.04,
                              width: height*0.04,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/images/book.png")
                                  )
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(width/16, width*0.02, 20, 0),
              child: Text(
                "Stream",
                style: TextStyle(
                    fontSize: height*0.03,
                    fontStyle: FontStyle.italic
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(5, width*0.02, 0, 20),
              child: Container(
                height: width*0.49+16,
                child: ListView(
                  shrinkWrap: false,
                  scrollDirection: Axis.horizontal ,
                  children: [
                    StreamContainer(),
                    StreamContainer(),
                    StreamContainer(),
                    StreamContainer(),
                    StreamContainer(),
                    StreamContainer(),

                  ],
                ),
              )
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(width/16, 0, 20, 20),
              child: Text(
                "Continue",
                style: TextStyle(
                    fontSize: height*0.03,
                    fontStyle: FontStyle.italic
                ),
              ),
            ),
            Stack(
              children: [
                Container(
                  height: width*0.6+30,
                  width: width,
                  child: DefaultTabController(
                    length: 10,
                    child: Consumer<GradientColorPalette>(
                      builder: (context, colorProvider, _) => TabBarView(
                          children: [
                            ContinueQuizContainer(colorProvider.getColorPalette()),
                            ContinueQuizContainer(colorProvider.getColorPalette()),
                            ContinueQuizContainer(colorProvider.getColorPalette()),
                            ContinueQuizContainer(colorProvider.getColorPalette()),
                            ContinueQuizContainer(colorProvider.getColorPalette()),
                            ContinueQuizContainer(colorProvider.getColorPalette()),
                            ContinueQuizContainer(colorProvider.getColorPalette()),
                            ContinueQuizContainer(colorProvider.getColorPalette()),
                            ContinueQuizContainer(colorProvider.getColorPalette()),
                            ContinueQuizContainer(colorProvider.getColorPalette()),
                          ]
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 5,
                  top: width*0.3-30,
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white
                    ),
                    child: IconButton(
                        onPressed: (){},
                        color: Colors.blue,
                        icon: Icon(
                            Icons.arrow_forward,
                        )
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(width/16, 0, 0, 10),
                  child: Text(
                    "Popular teachers",
                    style: TextStyle(
                        fontSize: height*0.03,
                        fontStyle: FontStyle.italic
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 30, 10),
                  child: Text(
                    "see all",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: height*0.02,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic
                    ),
                  ),
                )
              ],
            ),
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                PopularTeacher(),
                SizedBox(height: 10,),
                PopularTeacher(),
                SizedBox(height: 10,),
                PopularTeacher(),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(width/16, 20, 20, 20),
              child: Text(
                "Must repeat!",
                style: TextStyle(
                    fontSize: height*0.03,
                    fontStyle: FontStyle.italic
                ),
              ),
            ),
            Stack(
              children: [
                Container(
                  height: width*0.6+30,
                  width: width,
                  child: DefaultTabController(
                    length: 5,
                    child: TabBarView(
                        children: [
                          BadQuizContainer(),
                          BadQuizContainer(),
                          BadQuizContainer(),
                          BadQuizContainer(),
                          BadQuizContainer(),
                        ]
                    ),
                  ),
                ),
                Positioned(
                  right: 5,
                  top: width*0.3-30,
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white
                    ),
                    child: IconButton(
                        onPressed: (){},
                        color: Colors.blue,
                        icon: Icon(
                          Icons.arrow_forward,
                        )
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 100,),

          ],
        ),
      ),
    );
  }
}