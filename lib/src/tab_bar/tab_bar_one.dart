import 'package:flutter/material.dart';

class TabBarOne extends StatelessWidget {
  const TabBarOne({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(Icons.person),
        Icon(Icons.home),
        Icon(Icons.settings),
      ],
    );
  }
}
