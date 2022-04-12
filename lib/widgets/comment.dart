import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/stars.dart';

class Comment extends StatefulWidget {
  Comment({Key? key, required this.userName}) : super(key: key);

  String userName;
  @override
  _CommentState createState() => _CommentState();
}

class _CommentState extends State<Comment> {
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.userName,
            style: TextStyle(
                fontSize: height*0.021,
                fontWeight: FontWeight.w500,
                color: Colors.black
            ),
          ),
          Stars(isComment: true, rate: 4),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 2, 0, 0),
            child: Text(
              "You will learn a lot like this 1hwnemd jfvmfkds bwnfsvf jwdkfsdvg kjwdsfndhjkcsj sdf dfdjvf wehfdj widjfh kwjdfd idfjvf",
              style: TextStyle(
                  fontSize: height*0.019,
                  color: Colors.black
              ),
            ),
          )
        ],
      ),
    );
  }
}
