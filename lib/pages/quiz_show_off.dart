import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/pages/quiz_page.dart';
import 'package:quiz_app/providers/temporary_answers.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../models/answer.dart';

class QuizShowOff extends StatefulWidget {
  const QuizShowOff({Key? key}) : super(key: key);

  @override
  _QuizShowOffState createState() => _QuizShowOffState();
}

class _QuizShowOffState extends State<QuizShowOff> {

  PageController pageController = PageController();

  int pageNumber = 1;

  int numberOfItems = 6;

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            physics: NeverScrollableScrollPhysics(),
            controller: pageController,
            itemBuilder: (context, index) {
              print("page control ${index}");
              return Stack(
                children: [
                  QuizPage(index: index,total: numberOfItems),
                ],
              );
            },
            // onPageChanged: increaseTheIndex(pageController.page!.toInt()),
            itemCount: numberOfItems, // Can be null
          ),
          Positioned(
              right: -75,
              top: -75,
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    color: Color(0xffa6f2b8),
                    shape: BoxShape.circle
                ),
              )
          ),
          Positioned(
            bottom: 30,
            right: 30,
            child: Consumer<TemporaryAnswers>(
              builder: (context, temporaryAnswers, _) => GestureDetector(
                onTap: (){
                  print(pageNumber);
                  print(numberOfItems);
                  if(pageNumber != numberOfItems) {
                    pageController.jumpToPage(pageController.page!.toInt() + 1);
                    temporaryAnswers.updateTheAnswers([
                      Answer("Answer 15111", false),
                      Answer("Answer 26", false),
                      Answer("Answer 37", false),
                      Answer("Answer 48", false),
                    ]);
                  }else(
                    Navigator.of(context).pop()
                  );
                  setState(() {
                    pageNumber++;
                  });
                },
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffa7e8bd), width: 3, style: BorderStyle.solid),
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xff80ed99),
                            borderRadius: BorderRadius.all(Radius.circular(5))
                          ),
                          height: 60,
                          width: 100,
                          child: Center(
                            child: Text(
                              pageNumber != numberOfItems ? "Next" : "Close",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: height*0.02,
                                  letterSpacing: 1.5,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 30,
              right: 30,
              child: IconButton(
                icon: Icon(
                    Icons.cancel_outlined,
                  size: width*0.1,
                  color: Colors.white,
                ),
                onPressed:(){
                  Navigator.of(context).pop();
                },
              )
          ),
        ],
      ),
    );
  }
}
