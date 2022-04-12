import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../models/answer.dart';

class TemporaryAnswers extends ChangeNotifier{

  List<Answer> answers = [Answer("Answer 1", false),Answer("Answer 2", false),Answer("Answer 3", false),Answer("Answer 4", false),];

  updateTheAnswers(List<Answer> updatedAnswers){
    answers = updatedAnswers;
    notifyListeners();
  }

  List<Answer> getTheAnswers(){
    return answers;
  }

}