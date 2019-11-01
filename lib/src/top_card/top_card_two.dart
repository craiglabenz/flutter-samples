import 'package:flutter/material.dart';
import 'package:flutter_interact/src/fruit_card/fruit_card.dart';

class TopCardTwo extends StatelessWidget {
  const TopCardTwo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset('lib/assets/images/${fruits[0]["bannerImage"]}'),
        Positioned(
          bottom: 0,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: <Widget>[
              Text(fruits[0]['name']),
              Text(fruits[0]['family']),
              Text('${fruits[0]["tastiness"]} stars'),
            ],
          ),
        )
      ],
    );
  }
}
