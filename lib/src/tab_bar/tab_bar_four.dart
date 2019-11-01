import 'package:flutter/material.dart';

class TabBarFour extends StatelessWidget {
  const TabBarFour({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Color(0xFFDDDDDD),
            width: 1,
          ),
        ),
        color: Color(0xDDFFFFFF),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Icon(Icons.person),
          Icon(Icons.home),
          Icon(Icons.settings),
        ],
      ),
    );
  }
}
