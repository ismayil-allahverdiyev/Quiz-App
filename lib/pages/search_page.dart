import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/search_quiz_container.dart';

import '../widgets/search_bar.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  List<SearchQuizContainer> listOfQuizzes= [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    for(int i = 0; i < 5; i++){
      listOfQuizzes.add(
          SearchQuizContainer(onTeacherPage: false),
      );
    }

  }

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    print((height-225)/(width/4.5+40));//number of quizzes to display

    return GestureDetector(
      onTap: (){
        FocusScopeNode currentScope = FocusScope.of(context);
        if(!currentScope.hasPrimaryFocus){
          currentScope.unfocus();
        }
      },
      child: Scaffold(
        backgroundColor: Color(0xffEDFFFC),
        body: Stack(
          children: [
            ListView(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(25.0, 25, 5, 10),
                    child: SearchBar(),
                  ),
                ),
                ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: listOfQuizzes
                )
              ],
            ),
            Positioned(
              bottom: 120,
              right: 25,
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Icon(
                  Icons.filter_list,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}