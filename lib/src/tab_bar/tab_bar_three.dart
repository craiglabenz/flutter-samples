import 'package:flutter/material.dart';

class TabBarThree extends StatelessWidget {
  const TabBarThree({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: MediaQuery.of(context).size.width,
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
