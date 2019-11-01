import 'package:flutter/material.dart';
import 'package:flutter_interact/src/fruit_card/fruit_card.dart';

class TopCardOne extends StatelessWidget {
  const TopCardOne({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset(
          'lib/assets/images/${fruits[0]["bannerImage"]}',
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width / 2,
        ),
        Text(fruits[0]['name']),
        Text(fruits[0]['family']),
        Text('${fruits[0]["tastiness"]} stars'),
      ],
    );
  }
}
