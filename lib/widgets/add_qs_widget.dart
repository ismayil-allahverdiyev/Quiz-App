import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/providers/is_add_question_off.dart';

class AddQuestionWidget extends StatefulWidget {

  int qsNumber;

  AddQuestionWidget({Key? key, required this.qsNumber}) : super(key: key);

  @override
  _AddQuestionWidgetState createState() => _AddQuestionWidgetState();
}

class _AddQuestionWidgetState extends State<AddQuestionWidget> {
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "  Question ${widget.qsNumber+1}",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.aBeeZee(
                        fontSize: height*0.025,
                        color: Color(0xffc38d94),
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Row(
                    children: [
                      Card(
                        color: Colors.red,
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(CupertinoIcons.delete, color: Colors.white,),
                        ),
                      ),
                      SizedBox(width: 5,),
                      Consumer<IsAddQuestionOff>(
                        builder: (context, isAddQuestionOffPr, _) => GestureDetector(
                          onTap: (){
                            isAddQuestionOffPr.change(false);
                          },
                          child: Card(
                            color: Color(0xff55917f),
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.edit, color: Colors.white,),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Padding(
                padding:  EdgeInsets.fromLTRB(5, 0, width/3, 0),
                child: Divider(
                  thickness: 3,
                ),
              ),
              Text(
                "I am the question as you may have guessed, and I am trying to make it as long as possible",
                textAlign: TextAlign.left,
                style: GoogleFonts.aBeeZee(
                    fontSize: height*0.02
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
