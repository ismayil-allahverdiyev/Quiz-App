import 'package:flutter/material.dart';
import 'package:quiz_app/pages/friends_page.dart';
import 'package:quiz_app/pages/profile_page.dart';
import 'package:quiz_app/pages/search_page.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/providers/colors.dart';
import 'package:quiz_app/providers/temporary_answers.dart';
import 'home_page.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  PageController pageController = PageController();

  int colorfulOne = 0;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xffd6f5ff),

            Color(0xffFFFFFC),

          ]
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            PageView(
              physics:NeverScrollableScrollPhysics(),
              controller: pageController,
              children: [
                HomePage(),
                SearchPage(),
                FriendsPage(),
                ProfilePage(),
              ],
            ),
            Positioned(
              bottom: 30,
                child: Container(
                  height: 60,
                  width: width-50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Color(0xff677db7),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                          onPressed: (){
                            pageController.jumpToPage(0);
                            setState(() {
                              colorfulOne = 0;
                            });
                          },
                          icon: Icon(Icons.home, color: colorfulOne == 0 ? Color(0xfff5f749) : Colors.white,)
                      ),
                      IconButton(
                          onPressed: (){
                            pageController.jumpToPage(1);
                            setState(() {
                              colorfulOne = 1;
                            });
                          },
                          icon: Icon(Icons.search, color: colorfulOne == 1 ? Color(0xfff5f749) : Colors.white,)
                      ),
                      IconButton(
                          onPressed: (){
                            pageController.jumpToPage(2);
                            setState(() {
                              colorfulOne = 2;
                            });
                          },
                          icon: Icon(Icons.people, color: colorfulOne == 2 ? Color(0xfff5f749) : Colors.white,)
                      ),
                      IconButton(
                          onPressed: (){
                            pageController.jumpToPage(3);
                            setState(() {
                              colorfulOne = 3;
                            });
                          },
                          icon: Icon(Icons.account_circle, color: colorfulOne == 3 ? Color(0xfff5f749) : Colors.white,)
                      ),
                    ],
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}

