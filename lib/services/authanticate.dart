import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/home_page.dart';
import 'package:quiz_app/my_app.dart';
import 'package:quiz_app/pages/Sign_in_up_page.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({Key? key}) : super(key: key);

  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  @override
  Widget build(BuildContext context) {

    final firebaseUser = "User";


    if(firebaseUser != null){
      print("Signed in");
      return MyApp();
    }else {
      print("Not signed in");
      return SignInUp();
    }
  }
}
