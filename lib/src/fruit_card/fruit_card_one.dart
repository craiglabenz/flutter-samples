import 'package:flutter/material.dart';

class FruitCardOne extends StatelessWidget {
  const FruitCardOne({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text('Lime'),
          Text('9 calories'),
          Text('Citrus'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('6'),
              Icon(Icons.thumb_up),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('2'),
              Icon(Icons.thumb_down),
            ],
          ),
          Image.asset('lib/assets/images/lime.jpg', height: 120),
        ],
      ),
    );
  }
}
