import 'package:flutter/material.dart';

import '../models/answer.dart';


class Answers extends StatefulWidget {
  const Answers({
    Key? key,
    required this.answers
  }) : super(key: key);

  final List<Answer> answers;
  @override
  _AnswersState createState() => _AnswersState();
}

class _AnswersState extends State<Answers> {

  String? _character;

  @override
  void initState() {
    _character = widget.answers[0].answer;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;

    bool longEnough = false;

    for(int i = 0; i<widget.answers.length; i++){
      if(widget.answers[i].answer!.length>10){
        longEnough = true;
      }
    }

    print(_character);

    return longEnough == false ? Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  side: BorderSide(style: BorderStyle.solid, width: 3, color: Color(0xffa7e8bd),)
              ),
              child: Container(
                width: width*0.45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child:  RadioListTile<String>(
                  title: Text('${widget.answers[0].answer!}'),
                  value: widget.answers[0].answer!,
                  groupValue: _character,
                  onChanged: (String? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
            ),
            Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  side: BorderSide(style: BorderStyle.solid, width: 3, color: Color(0xffa7e8bd),)
              ),
              child: Container(
                width: width*0.45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: RadioListTile<String>(
                  title: Text('${widget.answers[1].answer!}'),
                  value: widget.answers[1].answer!,
                  groupValue: _character,
                  onChanged: (String? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  side: BorderSide(style: BorderStyle.solid, width: 3, color: Color(0xffa7e8bd),)
              ),
              child: Container(
                width: width*0.45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: RadioListTile<String>(
                  title: Text('${widget.answers[2].answer!}'),
                  value: widget.answers[2].answer!,
                  groupValue: _character,
                  onChanged: (String? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
            ),
            Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  side: BorderSide(style: BorderStyle.solid, width: 3, color: Color(0xffa7e8bd),)
              ),
              child: Container(
                width: width*0.45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: RadioListTile<String>(
                  title: Text('${widget.answers[3].answer!}'),
                  value: widget.answers[3].answer!,
                  groupValue: _character,
                  onChanged: (String? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
            ),
          ],
        )
      ],
    ) : Column(
      children: [
        Padding(
          padding: EdgeInsets.all(width*0.02),
          child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              side: BorderSide(style: BorderStyle.solid, width: 3, color: Color(0xffa7e8bd),)
            ),
            child: Container(
              width: width*0.9,
              child: RadioListTile<String>(
                title: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20.0, 0, 20),
                  child: Text('${widget.answers[0].answer!}'),
                ),
                value: widget.answers[0].answer!,
                groupValue: _character,
                onChanged: (String? value) {
                  print(_character);
                  setState(() {
                    _character = value;
                  });
                  print(_character);
                },
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(width*0.02),
          child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                side: BorderSide(style: BorderStyle.solid, width: 3, color: Color(0xffa7e8bd),)
            ),
            child: Container(
              width: width*0.9,
              child: RadioListTile<String>(
                title: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20.0, 0, 20),
                  child: Text('${widget.answers[1].answer!}'),
                ),
                value: widget.answers[1].answer!,
                groupValue: _character,
                onChanged: (String? value) {
                  print(_character);
                  setState(() {
                    _character = value;
                  });
                  print(_character);
                },
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(width*0.02),
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                side: BorderSide(style: BorderStyle.solid, width: 3, color: Color(0xffa7e8bd),)
            ),
            elevation: 10,
            child: Container(
              width: width*0.9,
              child: RadioListTile<String>(
                title: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20.0, 0, 20),
                  child: Text('${widget.answers[2].answer!}'),
                ),
                value: widget.answers[2].answer!,
                groupValue: _character,
                onChanged: (String? value) {
                  print(_character);
                  setState(() {
                    _character = value;
                  });
                  print(_character);
                },
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(width*0.02),
          child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                side: BorderSide(style: BorderStyle.solid, width: 3, color: Color(0xffa7e8bd),)
            ),
            child: Container(
              width: width*0.9,
              child: RadioListTile<String>(
                title: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20.0, 0, 20),
                  child: Text('${widget.answers[3].answer!}'),
                ),
                value: widget.answers[3].answer!,
                groupValue: _character,
                onChanged: (String? value) {
                  print(_character);
                  setState(() {
                    _character = value;
                  });
                  print(_character);
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
