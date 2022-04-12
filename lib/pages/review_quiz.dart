import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/add_qs_widget.dart';
import 'package:quiz_app/widgets/review_question_widget.dart';

class ReviewQuiz extends StatefulWidget {
  const ReviewQuiz({Key? key}) : super(key: key);

  @override
  _ReviewQuizState createState() => _ReviewQuizState();
}

class _ReviewQuizState extends State<ReviewQuiz> {
  @override
  Widget build(BuildContext context) {
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
        title: Text("Review Quiz", style: TextStyle(color: Colors.black),),
      ),
      body: ListView(
        children: [
          ReviewQuestionWidget(qsNumber: 0),
          ReviewQuestionWidget(qsNumber: 1),
          ReviewQuestionWidget(qsNumber: 2),
          ReviewQuestionWidget(qsNumber: 3),
          ReviewQuestionWidget(qsNumber: 4),
        ],
      ),
    );
  }
}
