import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/services/auth.dart';

class SignInUp extends StatefulWidget {
  const SignInUp({Key? key}) : super(key: key);

  @override
  _SignInUpState createState() => _SignInUpState();
}

enum Roles{teacher, student}

class _SignInUpState extends State<SignInUp> {

  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  Roles roles = Roles.student;

  int logInPageChoices = 1;

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: (){
        FocusScopeNode currentScope = FocusScope.of(context);
        if(!currentScope.hasPrimaryFocus){
          currentScope.unfocus();
        }
      },
      child: Scaffold(
        backgroundColor: Color(0xffFcFcFc),
        body: ListView(
          children: [
            SizedBox(height: height*0.16,),
            AnimatedSize(
                duration: Duration(milliseconds: 500),
              child: SizedBox(
                height: logInPageChoices==3 ? height*0.1 : 0,
              ),
            ),
            AnimatedSize(
              duration: Duration(milliseconds: 500),
              child: Center(
                  child: Text(
                    "Sign in",
                    style: GoogleFonts.zenMaruGothic(
                        fontSize: logInPageChoices == 1  ? height*0.04 : 0,
                        fontWeight: FontWeight.bold
                    ),
                  )
              ),
            ),
            AnimatedSize(
              duration: Duration(milliseconds: 500),
              child: Center(
                  child: Text(
                    "Sign up",
                    style: GoogleFonts.zenMaruGothic(
                        fontSize: logInPageChoices == 2 ? height*0.04 : 0,
                        fontWeight: FontWeight.bold
                    ),
                  )
              ),
            ),
            AnimatedSize(
              duration: Duration(milliseconds: 500),
              child: Center(
                  child: Text(
                    "Password",
                    style: GoogleFonts.zenMaruGothic(
                        fontSize: logInPageChoices == 3 ? height*0.04 : 0,
                        fontWeight: FontWeight.bold
                    ),
                  )
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      icon: Icon(CupertinoIcons.mail),
                      hintText: "E-mail",
                      hintStyle: GoogleFonts.zenMaruGothic(fontSize: height*0.018, fontWeight: FontWeight.bold),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Colors.white, style: BorderStyle.none, width: 0)
                      ),
                      disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Colors.white, style: BorderStyle.none, width: 0)
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Colors.white, style: BorderStyle.none, width: 0)
                      ),
                    ),
                  ),
                ),
              ),
            ),
            logInPageChoices == 2 ? Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: TextField(
                    controller: userNameController,
                    decoration: InputDecoration(
                      icon: Icon(CupertinoIcons.person),
                      hintText: "Username",
                      hintStyle: GoogleFonts.zenMaruGothic(fontSize: height*0.018, fontWeight: FontWeight.bold),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Colors.white, style: BorderStyle.none, width: 0)
                      ),
                      disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Colors.white, style: BorderStyle.none, width: 0)
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Colors.white, style: BorderStyle.none, width: 0)
                      ),
                    ),
                  ),
                ),
              ),
            ):Container(),
            logInPageChoices != 3 ? Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      icon: Icon(Icons.vpn_key_outlined),
                      hintText: "Password",
                      hintStyle: GoogleFonts.zenMaruGothic(fontSize: height*0.018, fontWeight: FontWeight.bold),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Colors.white, style: BorderStyle.none, width: 0)
                      ),
                      disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Colors.white, style: BorderStyle.none, width: 0)
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Colors.white, style: BorderStyle.none, width: 0)
                      ),
                    ),
                  ),
                ),
              ),
            ) : Container(),
            AnimatedSize(
              duration: Duration(milliseconds: 500),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    "Who are you?",
                    style: GoogleFonts.zenMaruGothic(fontSize: logInPageChoices==2 ? height*0.025 : 0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            logInPageChoices == 2 ? SizedBox(
              width: width,
              child: Row(
                children: [
                  SizedBox(
                    width: width/2,
                    child: RadioListTile<Roles>(
                      title: Text("Student"),
                        value: Roles.student,
                        groupValue: roles,
                        onChanged: (Roles? value){
                          setState(() {
                            roles = value!;
                          });
                        }
                    ),
                  ),
                  SizedBox(
                    width: width/2,
                    child: RadioListTile<Roles>(
                        title: Text("Teacher"),
                        value: Roles.teacher,
                        groupValue: roles,
                        onChanged: (Roles? value){
                          setState(() {
                            roles = value!;
                          });
                        }
                    ),
                  ),
                ],
              ),
            ) : Container(),
            GestureDetector(
              onTap: (){
                setState(() {
                  logInPageChoices = 3;
                });
              },
              child: AnimatedSize(
                duration: Duration(milliseconds: 500),
                child: AnimatedPadding(
                  duration: Duration(milliseconds: 500),
                  padding: logInPageChoices == 1 ? EdgeInsets.fromLTRB(0, 10, 20, 0) : EdgeInsets.all(0),
                  child: Text(
                    "Forgot password?",
                    textAlign: TextAlign.end,
                    style:GoogleFonts.zenMaruGothic(
                        fontSize: logInPageChoices == 1 ? height*0.02 : 0,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(width*0.35, 30, width*0.35, 0),
              child: GestureDetector(
                onTap: (){
                  print(emailController.text);
                  print(passwordController.text);
                  logInPageChoices != 3 ?
                  logInPageChoices == 1 ? context.read<AuthService>().signInEmail(emailController.text, passwordController.text) : context.read<AuthService>().signUpEmail(emailController.text, passwordController.text, userNameController.text, roles.toString())
                      : context.read<AuthService>().signInEmail(emailController.text, passwordController.text);//sendpasswordfix
                },
                child: Card(
                  elevation: 4,
                  color: Color(0xff49dcb1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: Center(
                    child: Container(
                      height: height*0.05,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Center(
                              child: Padding(
                                padding: EdgeInsets.all(height*0.005),
                                child: Text(
                                  logInPageChoices!=3?
                                    logInPageChoices == 1 ? "Sign in" : "Sign up"
                                  : "Reset",
                                  style:GoogleFonts.zenMaruGothic(
                                      fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: height*0.025
                                  ),
                                ),
                              )
                          ),
                        )
                    ),
                  ),
                ),
              ),
            ),
            logInPageChoices != 3 ? GestureDetector(
              onTap: (){
                setState(() {
                  logInPageChoices == 2?logInPageChoices = 1: logInPageChoices = 2;
                });
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: Card(
                  elevation: 0,
                  color: Color(0xffFcFcFc),
                  child: Center(
                    child: RichText(
                      textAlign: TextAlign.center,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: logInPageChoices == 2 ? "Already have an account?" :"Don't have an account?",
                              style:GoogleFonts.zenMaruGothic(
                                  color: Colors.black,
                                  fontSize: height*0.02
                              ),
                            ),
                            TextSpan(
                              text: logInPageChoices == 2 ? " Sign in!" : " Sign up!",
                              style:GoogleFonts.zenMaruGothic(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: height*0.02
                              ),
                            )
                          ]
                        )
                    ),
                  ),
                ),
              ),
            ) : Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    logInPageChoices = 1;
                  });
                },
                child: Card(
                  elevation: 0,
                  color: Color(0xffFcFcFc),
                  child: Center(
                    child: Text(
                        "Back to Sign in",
                      style:GoogleFonts.zenMaruGothic(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: height*0.02
                      ),
                    ),
                  ),
                ),
              ),
            ),
            logInPageChoices == 1 ? Padding(
              padding: EdgeInsets.fromLTRB(width*0.05, 0, width*0.05, 0),
              child: Divider(
                thickness: 3,
              ),
            ) : Container(),
            logInPageChoices == 1 ? SizedBox(height: 15,) : Container(),
            AnimatedSize(
              duration: Duration(milliseconds: 500),
              child: Text(
                "Sign in with:",
                textAlign: TextAlign.center,
                style:GoogleFonts.zenMaruGothic(
                    color: Colors.black,
                    fontSize: logInPageChoices == 1 ? height*0.02 : 0
                ),
              ),
            ),
            SizedBox(height: 20,),
            AnimatedSize(
              duration: Duration(milliseconds: 500),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: logInPageChoices == 1 ? height*0.06 : 0,
                    width: height*0.06,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/gmail.png"),
                            fit: BoxFit.fill
                        )
                    ),
                  ),
                  SizedBox(width: width*0.2,),
                  Container(
                    height: logInPageChoices == 1 ? height*0.06 : 0,
                    width: height*0.06,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/facebook.png"),
                            fit: BoxFit.fill
                        )
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
