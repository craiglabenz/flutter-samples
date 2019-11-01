import 'package:flutter/material.dart';

class TabBarTwo extends StatelessWidget {
  const TabBarTwo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          bottom: 0,
          child: Row(
            children: <Widget>[
              Icon(Icons.person),
              Icon(Icons.home),
              Icon(Icons.settings),
            ],
          ),
        ),
      ],
    );
  }
}
