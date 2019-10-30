import 'package:flutter/material.dart';

class MovieCardOne extends StatelessWidget {
  const MovieCardOne({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text('Star Trek'),
          Text('3PM • 3:30PM • 4PM'),
          Text('IMAX'),
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
          Image.asset('lib/assets/images/star-trek.jpg', height: 120),
        ],
      ),
    );
  }
}
