import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/pages/add_quiz_page.dart';
import 'package:quiz_app/widgets/graph_info.dart';
import 'package:quiz_app/widgets/search_quiz_container.dart';
import 'package:image_picker/image_picker.dart';
import '../widgets/chart.dart';
import '../widgets/stats_short.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  String username = "";
  String role = "";

  ImagePicker imagePicker = ImagePicker();

  getUserData()async{

  }

  @override
  void initState() {
    getUserData();
    super.initState();
  }

  final ScrollController controller = ScrollController();

  List<GraphInfo> graphInformation = [
    GraphInfo("Passed quizzes", 9),
    GraphInfo("Failed quizzes", 10),
    GraphInfo("Total quizzes", 20),
  ];

  bool quizAdder = false;

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xffEDFFFC),
      body:role == "Roles.student" ? CustomScrollView(
        controller: controller,
        slivers: [
          SliverAppBar(
            floating: false,
            expandedHeight: 350,
            backgroundColor: Color(0xffEDFFFC),
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                overflow: Overflow.visible,
                children: [
                  Container(
                    height: 250,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/profpic.jpg"),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 50,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 61,
                              backgroundColor: Color(0xffEDFFFC),
                              child: CircleAvatar(
                                radius: 58,
                                backgroundColor: Color(0xffF5FFC6),
                                child: CircleAvatar(
                                  radius: 53,
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage("assets/images/profpic.jpg"),
                                    radius: 50,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text(
                              "$username",
                              style: TextStyle(
                                  fontSize: height*0.02,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 50,
                    child: Card(
                      color: Colors.grey,
                      shape: CircleBorder(),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                          color: Colors.white,
                          onPressed: (){

                          },
                          icon: Icon(Icons.edit),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 50,
                      right: 20,
                      child: PopupMenuButton(
                        icon: Icon(Icons.settings),
                        iconSize: height*0.03,
                        itemBuilder: (context)=>[
                          PopupMenuItem(
                              child: Text("Sign Out"),
                            onTap: (){

                            },
                          )
                        ],
                      )
                  )
                ],
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate(
                [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                            child: Text(
                                "15",
                              style: TextStyle(
                                fontSize: height*0.02
                              ),
                            ),
                          ),
                          Container(
                            height: height*0.04,
                            width: height*0.04,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/images/book.png")
                                )
                            ),
                          )
                        ],
                      ),
                      Container(
                        height: height*0.04,
                        width: 2,
                        color: Colors.grey,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                            child: Text(
                              "15",
                              style: TextStyle(
                                  fontSize: height*0.02
                              ),
                            ),
                          ),
                          Icon(Icons.people, size: height*0.04, color: Colors.green,)
                        ],
                      ),
                      Container(
                        height: height*0.04,
                        width: 2,
                        color: Colors.grey,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                            child: Text(
                              "15",
                              style: TextStyle(
                                  fontSize: height*0.02
                              ),
                            ),
                          ),
                          Icon(
                            CupertinoIcons.checkmark_seal_fill,
                            color: Colors.lightBlueAccent,
                            size: height*0.03,
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: width/4*3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width:width/2,
                          child: const Stats(),
                        ),
                        SizedBox(
                          width: width/2,
                            child: Chart(
                                graphInformation: graphInformation
                            )
                        )
                      ],
                    ),
                  )
                ]
              )
          )
        ],
      ) : Stack(
        children: [
          CustomScrollView(
            controller: controller,
            slivers: [
              SliverAppBar(
                floating: false,
                expandedHeight: 350,
                backgroundColor: Color(0xffEDFFFC),
                flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                    overflow: Overflow.visible,
                    children: [
                      Container(
                        height: 250,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/profpic.jpg"),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                      Positioned(
                        bottom: 20,
                        left: 50,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                CircleAvatar(
                                  radius: 61,
                                  backgroundColor: Color(0xffEDFFFC),
                                  child: CircleAvatar(
                                    radius: 58,
                                    backgroundColor: Color(0xffF5FFC6),
                                    child: CircleAvatar(
                                      radius: 53,
                                      backgroundColor: Colors.white,
                                      child: CircleAvatar(
                                        backgroundImage: AssetImage("assets/images/profpic.jpg"),
                                        radius: 50,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  "$username",
                                  style: TextStyle(
                                      fontSize: height*0.02,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 130,
                        right: 20,
                        child: Container(
                          height: height*0.04,
                          width: height*0.04,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            shape: BoxShape.circle
                          ),
                          child: Center(
                            child: IconButton(
                              color: Colors.white,
                              onPressed: () => showDialog<AlertDialog>(
                                builder: (BuildContext context) => AlertDialog(
                                  title: Text("Cover picture"),
                                  actions: [
                                    ListTile(
                                      onTap: () async{
                                        final image = await imagePicker.pickImage(source: ImageSource.camera, imageQuality: 100);
                                        File file = File(image!.path);
                                      },
                                      leading: Icon(Icons.camera_alt_outlined),
                                      title: Text("From camera"),
                                    ),
                                    ListTile(
                                      onTap: () async{
                                        final image = await imagePicker.pickImage(source: ImageSource.gallery, imageQuality: 100);
                                        File file = File(image!.path);
                                      },
                                      leading: Icon(Icons.image_outlined),
                                      title: Text("From gallery"),
                                    ),
                                  ],
                                ),
                                context: context
                              ),
                              icon: Icon(Icons.edit, size: height*0.02,),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                          bottom: 50,
                          right: 20,
                          child: PopupMenuButton(
                            icon: Icon(Icons.settings),
                            iconSize: height*0.03,
                            itemBuilder: (context)=>[
                              PopupMenuItem(
                                child: Text("Sign Out"),
                                onTap: (){

                                },
                              )
                            ],
                          )
                      )
                    ],
                  ),
                ),
              ),
              SliverList(
                  delegate: SliverChildListDelegate(
                      [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                                  child: Text(
                                    "15",
                                    style: TextStyle(
                                        fontSize: height*0.02
                                    ),
                                  ),
                                ),
                                Container(
                                  height: height*0.04,
                                  width: height*0.04,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/images/book.png")
                                      )
                                  ),
                                )
                              ],
                            ),
                            Container(
                              height: height*0.04,
                              width: 2,
                              color: Colors.grey,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                                  child: Text(
                                    "15",
                                    style: TextStyle(
                                        fontSize: height*0.02
                                    ),
                                  ),
                                ),
                                Icon(Icons.people, size: height*0.04, color: Colors.green,)
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: SizedBox(
                            child: Column(
                              children: [
                                Text(
                                  "Your quizes",
                                  style: GoogleFonts.aBeeZee(
                                    fontSize: height*0.025,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontStyle: FontStyle.italic
                                  ),
                                ),
                                ListView(
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  children: [
                                    SearchQuizContainer(onTeacherPage: true,),
                                    SearchQuizContainer(onTeacherPage: true,),
                                    SearchQuizContainer(onTeacherPage: true,),
                                    SearchQuizContainer(onTeacherPage: true,),
                                    SearchQuizContainer(onTeacherPage: true,),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: width*0.1+120,)
                      ]
                  )
              )
            ],
          ),
          Positioned(
            bottom: 110,
            right: 30,
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => AddQuizPage()));
              },
              child: Card(
                color: Color(0xff677db7),
                elevation: 10,
                shape: CircleBorder(),
                child: Padding(
                  padding: EdgeInsets.all(width*0.02),
                  child: Icon(
                      Icons.add,
                    size: width*0.1,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}