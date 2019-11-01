import 'package:flutter/material.dart';
import 'package:flutter_interact/src/fruit_card/fruit_card.dart';

class TopCardWidget extends StatelessWidget {
  final String name;
  final String family;
  final String bannerImage;
  final int numStars;
  const TopCardWidget({
    @required this.name,
    @required this.family,
    @required this.bannerImage,
    @required this.numStars,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> stars = Iterable<int>.generate(numStars).toList().map((_) {
      return Icon(Icons.star, color: Colors.yellow);
    }).toList();
    return Stack(
      children: <Widget>[
        Image.asset('lib/assets/images/$bannerImage'),
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
                      name,
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    Text(
                      family,
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
