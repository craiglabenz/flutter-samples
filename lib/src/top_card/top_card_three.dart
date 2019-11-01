import 'package:flutter/material.dart';
import 'package:flutter_interact/src/fruit_card/fruit_card.dart';

class TopCardThree extends StatelessWidget {
  const TopCardThree({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset('lib/assets/images/${fruits[0]["bannerImage"]}'),
        Positioned(
          bottom: 0,
          width: MediaQuery.of(context).size.width,
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0x77000000),
            ),
            child: Column(
              children: <Widget>[
                Text(
                  fruits[0]['name'],
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  fruits[0]['family'],
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  '${fruits[0]["tastiness"]} stars',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
