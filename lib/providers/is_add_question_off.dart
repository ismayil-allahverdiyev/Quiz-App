import 'package:flutter/cupertino.dart';

class IsAddQuestionOff extends ChangeNotifier{

  bool isAddQuestionOff = true;

  change(bool change){
    isAddQuestionOff = change;
    notifyListeners();
  }

}