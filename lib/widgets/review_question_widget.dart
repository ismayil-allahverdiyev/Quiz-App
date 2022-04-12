import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReviewQuestionWidget extends StatefulWidget {
  ReviewQuestionWidget({Key? key, required this.qsNumber}) : super(key: key);

  int qsNumber;
  @override
  _ReviewQuestionWidgetState createState() => _ReviewQuestionWidgetState();
}

class _ReviewQuestionWidgetState extends State<ReviewQuestionWidget> {

  bool answerOpen = false;
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            overflow: Overflow.visible,
            children: [
              Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
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
                                color: Color(0xff87b6a7),
                                fontWeight: FontWeight.bold
                            ),
                          ),
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
                      ),

                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: -10,
                right: 30,
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      answerOpen = !answerOpen;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xfff7d08a),
                    ),
                    height: 30,
                    width: 50,
                    child: Icon(answerOpen == false ? Icons.keyboard_arrow_down : Icons.keyboard_arrow_up, color: Colors.white,),
                  ),
                ),
              )
            ],
          ),
        ),
        answerOpen == true ? Padding(
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
          child: Card(
            color: Colors.grey[200],
            elevation: 10,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Answer: ",
                          style: GoogleFonts.aBeeZee(
                              fontSize: height*0.022,
                              color: Colors.redAccent,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        TextSpan(
                          text: "I am the question as you may have guessed, and I am trying to make it as long as possible",
                          style: GoogleFonts.aBeeZee(
                              fontSize: height*0.02,
                            color: Colors.black
                          ),
                        )
                      ]
                    ),
                  ),

                ],
              ),
            ),
          ),
        ) : Container(),
      ],
    );
  }
}
