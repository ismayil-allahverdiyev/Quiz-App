import 'package:flutter/material.dart';
import 'package:quiz_app/pages/quiz_show_off.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/pages/review_quiz.dart';
import 'package:quiz_app/widgets/comment.dart';
import 'package:quiz_app/widgets/profile_avatar.dart';
import 'package:quiz_app/widgets/stars.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class QuizInfoPage extends StatefulWidget {
  List<Color>? colorList;
  QuizInfoPage({required this.colorList, Key? key}) : super(key: key);

  @override
  _QuizInfoPageState createState() => _QuizInfoPageState();
}

class _QuizInfoPageState extends State<QuizInfoPage> with SingleTickerProviderStateMixin {

  final _currentPageNotifier = ValueNotifier<int>(0);

  TabController? tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 2);
    print("added");
    tabController!.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    if (tabController!.indexIsChanging) {
      print(_currentPageNotifier.value);
      _currentPageNotifier.value = tabController!.index;
      print(_currentPageNotifier.value);
    }
  }

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    String userName = "User Userov";
    String className = "Discrete Mathematics - Algorithms";

    return Scaffold(
      backgroundColor: Color(0xffFBFFFC),
      appBar: AppBar(
        backgroundColor: Color(0xffFBFFFC),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_sharp, color: Colors.black,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.share, color: Colors.black,)
          )
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 15, 8),
                      child: ProfileAvatar(),
                    ),
                    Text(
                      userName,
                      style: TextStyle(
                          fontSize: height*0.025,
                          fontWeight: FontWeight.w500,
                          color: Colors.black
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 5),
                  child: RichText(
                      text: TextSpan(
                          children: [
                            TextSpan(
                              text: "",
                              style: TextStyle(
                                  fontSize: height*0.025,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  color: const Color(0xffeeb868)
                              ),
                            ),
                            TextSpan(
                              text: className,
                              style: TextStyle(
                                  fontSize: height*0.03,
                                  fontWeight: FontWeight.w500,
                                  // fontStyle: FontStyle.italic,
                                  color: Colors.black
                              ),
                            )
                          ]
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: RichText(
                      text: TextSpan(
                          children: [
                            TextSpan(
                              text: "",
                              style: TextStyle(
                                  fontSize: height*0.025,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  color: const Color(0xffeeb868)
                              ),
                            ),
                            TextSpan(
                              text: className + " you will learn a lot like this",
                              style: TextStyle(
                                  fontSize: height*0.022,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black
                              ),
                            )
                          ]
                      )
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(width*0.1, 5, width*0.1, 5),
                  child: Divider(
                    thickness: 2,
                    color: Colors.grey[300],
                  ),
                ),
                Stars(rate: 1.7, isComment: false,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 8, 0, 0),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ReviewQuiz()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            gradient: LinearGradient(
                              colors: widget.colorList!
                            )
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
                            child: Text("Review quiz", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, letterSpacing: 1.2),),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 8, 20),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Feedback",
                          style: TextStyle(
                              fontSize: height*0.028,
                              fontWeight: FontWeight.w500,
                              color: Colors.black
                          ),
                        ),
                        TextSpan(
                          text: " (86)",
                          style: TextStyle(
                              fontSize: height*0.015,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            letterSpacing: 1.1
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // SizedBox(height: height*0.04,),
                // Padding(
                //   padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                //   child: RichText(
                //       textAlign: TextAlign.start,
                //       text: TextSpan(
                //           children: [
                //             TextSpan(
                //               text: "Tried  ",
                //               style: TextStyle(
                //                   fontSize: height*0.025,
                //                   fontWeight: FontWeight.bold,
                //                   fontStyle: FontStyle.italic,
                //                   color: const Color(0xffeeb868)
                //               ),
                //             ),
                //             TextSpan(
                //               text: "12",
                //               style: TextStyle(
                //                   fontSize: height*0.03,
                //                   fontWeight: FontWeight.w400,
                //                   fontStyle: FontStyle.italic,
                //                   color: Colors.black
                //               ),
                //             ),
                //             TextSpan(
                //               text: " times",
                //               style: TextStyle(
                //                   fontSize: height*0.02,
                //                   fontWeight: FontWeight.bold,
                //                   fontStyle: FontStyle.italic,
                //                   color: Colors.black
                //               ),
                //             ),
                //           ]
                //       )
                //   ),
                // ),
                // Padding(
                //   padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                //   child: RichText(
                //       text: TextSpan(
                //           children: [
                //             TextSpan(
                //               text: "Finished successfully  ",
                //               style: TextStyle(
                //                   fontSize: height*0.025,
                //                   fontWeight: FontWeight.bold,
                //                   fontStyle: FontStyle.italic,
                //                   color: const Color(0xffeeb868)
                //               ),
                //             ),
                //             TextSpan(
                //               text: "8",
                //               style: TextStyle(
                //                   fontSize: height*0.03,
                //                   fontWeight: FontWeight.w400,
                //                   fontStyle: FontStyle.italic,
                //                   color: Colors.black
                //               ),
                //             ),
                //             TextSpan(
                //               text: " times",
                //               style: TextStyle(
                //                   fontSize: height*0.02,
                //                   fontWeight: FontWeight.bold,
                //                   fontStyle: FontStyle.italic,
                //                   color: Colors.black
                //               ),
                //             )
                //           ]
                //       )
                //   ),
                // ),
                // Padding(
                //   padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                //   child: RichText(
                //       text: TextSpan(
                //           children: [
                //             TextSpan(
                //               text: "Best score  ",
                //               style: TextStyle(
                //                   fontSize: height*0.025,
                //                   fontWeight: FontWeight.bold,
                //                   fontStyle: FontStyle.italic,
                //                   color: const Color(0xffeeb868)
                //               ),
                //             ),
                //             TextSpan(
                //               text: "90",
                //               style: TextStyle(
                //                   fontSize: height*0.03,
                //                   fontWeight: FontWeight.w400,
                //                   fontStyle: FontStyle.italic,
                //                   color: Colors.black
                //               ),
                //             ),
                //             TextSpan(
                //               text: "%",
                //               style: TextStyle(
                //                   fontSize: height*0.02,
                //                   fontWeight: FontWeight.w400,
                //                   fontStyle: FontStyle.italic,
                //                   color: Colors.black
                //               ),
                //             )
                //           ]
                //       )
                //   ),
                // ),
                Comment(userName: "User Userov"),
                Padding(
                  padding: EdgeInsets.fromLTRB(width*0.05, 10, width*0.05, 10),
                  child: Divider(
                    thickness: 2,
                    color: Colors.grey[300],
                  ),
                ),
                Comment(userName: "User Userov"),
                Padding(
                  padding: EdgeInsets.fromLTRB(width*0.05, 10, width*0.05, 10),
                  child: Divider(
                    thickness: 2,
                    color: Colors.grey[300],
                  ),
                ),
                Comment(userName: "User Userov"),
                Padding(
                  padding: EdgeInsets.fromLTRB(width*0.05, 10, width*0.05, 10),
                  child: Divider(
                    thickness: 2,
                    color: Colors.grey[300],
                  ),
                ),
                Comment(userName: "User Userov"),
                SizedBox(height: 150,),
              ],
            ),
            Positioned(
              bottom: 40,
              right: 25,
              left: 25,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const QuizShowOff()));
                },
                child: Card(
                  elevation: 10,
                  child: Container(
                    height: 70,
                    width: width-50,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: widget.colorList!
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(5))
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Start Quiz",
                           style: TextStyle(
                             color: Colors.white,
                             fontSize: height*0.02,
                             letterSpacing: 1.5
                           ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}
