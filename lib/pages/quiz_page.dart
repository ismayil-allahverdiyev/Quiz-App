import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/functions/randomizer.dart';
import 'package:quiz_app/providers/temporary_answers.dart';
import 'package:quiz_app/widgets/answers.dart';

import '../models/answer.dart';
import '../widgets/hint.dart';
import '../widgets/question_widget.dart';

class QuizPage extends StatefulWidget {
  int index;
  int total;

  QuizPage({Key? key, required this.index, required this.total}) : super(key: key);


  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {

  List<Container> containerList = [];

  questionFollow(){
    for(int i = 0; i<widget.total;i++){
      if(i<=widget.index-1){
        containerList.add(
            Container(
              width: 300/widget.total,
              height: 20,
              color:Color(0xfffc7a57),
            )
        );
      }else{
        containerList.add(
            Container(
              width: 300/widget.total,
              height: 30,
              color:Colors.white,
            )
        );
      }
    }
  }

  @override
  void initState() {
    questionFollow();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    String word = "QuestionQuestionQuestiQuestionQuestionQuestiQuestionQuestionQuesti";

    Randomizer random = Randomizer();

    List<int> order = random.randomize(4);

    List<Answer> mixedAnswers = [];

    for(int i = 0; i<4; i++){
      mixedAnswers.add(Provider.of<TemporaryAnswers>(context, listen: false).getTheAnswers().elementAt(order[i]-1));
    }

    double sizer = 0;
    if((width-50)/height/0.025 <word.length){
      sizer+=(width-50)/height/0.03/word.length*20;
    }

    return Scaffold(
      // backgroundColor: Color(0xffEDFFFC),
      body: ListView(
        children: [
          SizedBox(
            height: 100,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 20, 20, 0),
                  child: Container(
                    height: width*0.05,
                    width: 300,
                    decoration: BoxDecoration(
                      border:Border.all(color: Colors.grey, width: 3, style: BorderStyle.solid),
                      borderRadius: BorderRadius.all(Radius.circular(5))
                    ),
                    child: ListView(
                      physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: containerList,
                    )
                  ),
                )
              ],
            ),
          ),
          const Hint(),
          SizedBox(
            height: height*0.00,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, width/6, 0),
            child: QuestionWidget(word: word),
          ),
          SizedBox(
            height: height*0.03,
          ),
          Answers(answers: mixedAnswers)
        ],
      ),
    );
  }
}