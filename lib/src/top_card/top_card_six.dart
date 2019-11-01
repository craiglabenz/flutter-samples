import 'package:flutter/material.dart';
import 'package:flutter_interact/src/fruit_card/fruit_card.dart';

class TopCardSix extends StatelessWidget {
  const TopCardSix({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> stars =
        Iterable<int>.generate(fruits[0]["tastiness"]).toList().map((_) {
      return Icon(Icons.star, color: Colors.yellow);
    }).toList();
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      fruits[0]['name'],
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    Text(
                      fruits[0]['family'],
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Row(children: stars),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
