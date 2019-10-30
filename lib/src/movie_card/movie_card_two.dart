import 'package:flutter/material.dart';

class MovieCardTwo extends StatelessWidget {
  const MovieCardTwo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
