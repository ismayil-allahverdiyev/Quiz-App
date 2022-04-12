import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Expanded(
          child: SizedBox(
            height: 60,
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.style, color: Colors.green,),
                hintText: "Search for quizzes",
                filled: true,
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  borderSide: BorderSide(
                      color: Color(0xff677db7),
                      width: 4.0
                  ),                    ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  borderSide: BorderSide(
                      color: Color(0xff677db7),
                      width: 4.0
                  ),                    ),
                // disabledBorder: OutlineInputBorder(
                //   borderSide: BorderSide(color: Colors.red, width: 5.0),
                // ),
              ),
            ),
          ),
        ),
        Center(
          child: IconButton(
              onPressed: (){},
              icon: Icon(Icons.search, size: 30,)
          ),
        )
      ],
    );
  }
}
