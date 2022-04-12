import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/providers/is_add_question_off.dart';
import 'package:quiz_app/widgets/add_qs_widget.dart';
import 'package:quiz_app/widgets/answers.dart';

class AddQuizPage extends StatefulWidget {
  const AddQuizPage({Key? key}) : super(key: key);

  @override
  _AddQuizPageState createState() => _AddQuizPageState();
}

class _AddQuizPageState extends State<AddQuizPage> {

  bool isMultipleAnswer = false;

  List<AddQuestionWidget> questionsContainers = [];
  List<Container> questionsList = [];

  TextEditingController questionController = TextEditingController();
  TextEditingController hintController = TextEditingController();
  TextEditingController textAnswerController = TextEditingController();
  TextEditingController correctChoiceController = TextEditingController();
  TextEditingController falseChoiceController1 = TextEditingController();
  TextEditingController falseChoiceController2 = TextEditingController();
  TextEditingController falseChoiceController3 = TextEditingController();

  String questionValue = "";

  @override
  Widget build(BuildContext context) {

    print(questionValue);

    if(questionController.text == null){
      print("not empty");
    }

    if(isMultipleAnswer == false && questionController.text != "" && hintController.text != "" && textAnswerController.text != ""){
      print("works for false version");
    }else if(isMultipleAnswer == true && correctChoiceController.text != "" && falseChoiceController1.text != "" && falseChoiceController2.text != "" && falseChoiceController3.text != ""){
      print("works for true version");

    }

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    print("Build called");


    return GestureDetector(
      onTap: (){
        FocusScopeNode currentScope = FocusScope.of(context);

        if(!currentScope.hasPrimaryFocus){
          currentScope.unfocus();
        }
      },
      child: Scaffold(
        body: ListView(
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios_sharp)
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(8, 8, width/4, 8),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: TextField(
                  maxLength: 30,
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: InputDecoration(
                    labelText: "Title",
                    suffixIcon: Icon(
                      Icons.create,
                      size: height*0.025,
                      color: Color(0xff55917f),
                    ),
                    floatingLabelStyle: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: height*0.025,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
                    labelStyle: TextStyle(
                      color: Color(0xffc98686),
                      fontSize: height*0.02,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(8, 8, 20, 8),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  maxLength: 200,
                  decoration: InputDecoration(
                    labelText: "Description",
                    suffixIcon: Icon(
                      Icons.create,
                      size: height*0.025,
                      color: Color(0xff55917f),
                    ),
                    floatingLabelStyle: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: height*0.025,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
                    labelStyle: TextStyle(
                      color: Color(0xffc98686),
                      fontSize: height*0.02,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
              ),
            ),
            Text(
              "Quiz insight",
              textAlign: TextAlign.center,
              style: GoogleFonts.aBeeZee(
                  fontSize: height*0.025,
                  color: Color(0xffc38d94)
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(width/4, 0, width/4, 0),
              child: Divider(
                thickness: 3,
              ),
            ),
            Column(
              children: questionsContainers,
            ),
            AnimatedSize(
                duration: Duration(milliseconds: 500),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  child: Consumer<IsAddQuestionOff>(
                    builder: (context, isAddQuestionOff, _) => Container(
                      width: width,
                      height: isAddQuestionOff.isAddQuestionOff == true ? 0 : isMultipleAnswer == false? height/2.5:height/1.5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                            child: Container(
                              height: height*0.08,
                              child: TextField(
                                controller: questionController,
                                maxLength: 150,
                                keyboardType: TextInputType.multiline,
                                maxLines: null,
                                decoration: InputDecoration(
                                  labelText: "Question",
                                  suffixIcon: Icon(
                                    Icons.create,
                                    size: height*0.025,
                                    color: Color(0xff55917f),
                                  ),
                                  floatingLabelStyle: TextStyle(
                                    color: Colors.blueGrey,
                                    fontSize: height*0.025,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                  ),
                                  labelStyle: TextStyle(
                                    color: Color(0xff6bab90),
                                    fontSize: height*0.02,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 0, width/3, 0),
                            child: Container(
                              height: height*0.08,
                              child: TextField(
                                controller: hintController,
                                maxLength: 30,
                                keyboardType: TextInputType.multiline,
                                maxLines: null,
                                decoration: InputDecoration(
                                  labelText: "Hint",
                                  suffixIcon: Icon(
                                    Icons.create,
                                    size: height*0.025,
                                    color: Color(0xff55917f),
                                  ),
                                  floatingLabelStyle: TextStyle(
                                    color: Colors.blueGrey,
                                    fontSize: height*0.025,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                  ),
                                  labelStyle: TextStyle(
                                    color: Color(0xff6bab90),
                                    fontSize: height*0.02,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: height*0.02,
                              child: Row(
                                children: [
                                  Switch(
                                      value: isMultipleAnswer,
                                      onChanged: (value){
                                        setState(() {
                                          isMultipleAnswer = value;
                                        });
                                        print(isMultipleAnswer);
                                      }
                                    ),
                                  Text("Multiple Choice", style: TextStyle(fontSize: height*0.02, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, color: !isMultipleAnswer ? Colors.grey : Color(0xff6bab90)),)
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(8, 8, 20, 20),
                            child: !isMultipleAnswer ? Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: Container(
                                height: height*0.08,
                                child: TextField(
                                  controller: textAnswerController,
                                  keyboardType: TextInputType.multiline,
                                  maxLines: null,
                                  decoration: InputDecoration(
                                    labelText: "Answer",
                                    suffixIcon: Icon(
                                      Icons.create,
                                      size: height*0.025,
                                      color: Color(0xff55917f),
                                    ),
                                    floatingLabelStyle: TextStyle(
                                      color: Colors.blueGrey,
                                      fontSize: height*0.025,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1.5,
                                    ),
                                    labelStyle: TextStyle(
                                      color: Color(0xff6bab90),
                                      fontSize: height*0.02,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1.5,
                                    ),
                                  ),
                                ),
                              ),
                            ) : Container(
                              height: height*0.32,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Card(
                                      color: Color(0xffd9f1fc),
                                      elevation: 5,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: SizedBox(
                                          width: width,
                                          child: TextField(
                                            controller: correctChoiceController,
                                            keyboardType: TextInputType.multiline,
                                            maxLines: null,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Card(
                                      color: Color(0xfffed9d8),
                                      elevation: 5,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: SizedBox(
                                          width: width,
                                          child: TextField(
                                            controller: falseChoiceController1,
                                            keyboardType: TextInputType.multiline,
                                            maxLines: null,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Card(
                                      color: Color(0xfffed9d8),
                                      elevation: 5,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: SizedBox(
                                          width: width,
                                          child: TextField(
                                            keyboardType: TextInputType.multiline,
                                            maxLines: null,
                                            controller: falseChoiceController2,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(5.0, 5, 5, 0),
                                    child: Card(
                                      color: Color(0xfffed9d8),
                                      elevation: 5,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: SizedBox(
                                          width: width,
                                          child: TextField(
                                            controller: falseChoiceController3,
                                            keyboardType: TextInputType.multiline,
                                            maxLines: null,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              height: height*0.08,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(
                                      onPressed: (){
                                        isAddQuestionOff.change(true);
                                      },
                                      icon: Icon(Icons.clear)
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0, 0, 20, 10),
                                    child: GestureDetector(
                                      onTap: (){
                                        print("added");
                                        print(questionsContainers.length);
                                        setState(() {
                                          (isMultipleAnswer == false && questionController.text != "" && hintController.text != "" && textAnswerController != "") || (isMultipleAnswer == true && correctChoiceController.text != "" && falseChoiceController1.text != "" && falseChoiceController2.text != "" && falseChoiceController3.text != "") ? isAddQuestionOff.change(true) : isAddQuestionOff.change(false);
                                          (isMultipleAnswer == false && questionController.text != "" && hintController.text != "" && textAnswerController != "") || (isMultipleAnswer == true && correctChoiceController.text != "" && falseChoiceController1.text != "" && falseChoiceController2.text != "" && falseChoiceController3.text != "") ? questionsContainers.add(
                                              AddQuestionWidget(qsNumber: questionsContainers.length)
                                          ) : print("");
                                        });
                                      },
                                      child: Card(
                                        elevation: 10,
                                        color: (isMultipleAnswer == false && questionController.text != "" && hintController.text != "" && textAnswerController != "") || (isMultipleAnswer == true && correctChoiceController.text != "" && falseChoiceController1.text != "" && falseChoiceController2.text != "" && falseChoiceController3.text != "") ? Color(0xff76ace5) : Colors.grey,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(10))
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: AnimatedSize(
                                            duration: Duration(milliseconds: 500),
                                            child: SizedBox(
                                              height: width*0.05,
                                              width: width/5,
                                              child: Center(
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                  children: [
                                                    Text("Save ", style: TextStyle(fontSize: height*0.02, color: Colors.white, fontWeight: FontWeight.bold),),
                                                    Icon(Icons.save, color: Colors.white,),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Consumer<IsAddQuestionOff>(
              builder: (context, isAddQuestionOff, _) => Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      isAddQuestionOff.change(false);
                    });
                  },
                  child: Card(
                    elevation: 10,
                    color: isAddQuestionOff.isAddQuestionOff == true ? Color(0xfff2cee6) : Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Container(
                      height: width*0.1,
                      width: width*0.4,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30, 8, 30, 8),
                        child: FittedBox(
                            child: Text(
                                "Add question",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                              ),
                            )
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
