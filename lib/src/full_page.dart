import 'package:flutter/material.dart';
import 'package:flutter_interact/src/fruit_card/fruit_card.dart';
import 'package:flutter_interact/src/tab_bar/tab_bar.dart';
import 'package:flutter_interact/src/top_card/top_card.dart';

class FullPage extends StatefulWidget {
  const FullPage({Key key}) : super(key: key);

  @override
  _FullPageState createState() => _FullPageState();
}

class _FullPageState extends State<FullPage> {
  Map<String, dynamic> fruitData;

  @override
  void initState() {
    super.initState();
    fruitData = fruits[0];
  }

  void updateActiveFruit(int fruitIndex) {
    setState(() {
      fruitData = fruits[fruitIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: 0,
          height: MediaQuery.of(context).size.width / 2,
          child: TopCardWidget(
            name: fruitData['name'],
            family: fruitData['family'],
            bannerImage: fruitData['bannerImage'],
            numStars: fruitData['tastiness'],
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.width / 2,
          height: MediaQuery.of(context).size.height -
              (MediaQuery.of(context).size.width / 2),
          width: MediaQuery.of(context).size.width,
          child: FruitCardList(
            fruitData: fruits,
            onTap: updateActiveFruit,
            paddingBottom: 150,
          ),
        ),
        Positioned(
          bottom: 0,
          height: 75,
          width: MediaQuery.of(context).size.width,
          child: TabBarWidget(),
        )
      ],
    );
  }
}
