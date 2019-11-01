import 'package:flutter/material.dart';
import 'package:flutter_interact/src/fruit_card/fruit_card.dart';

class FruitCardList extends StatelessWidget {
  final List<Map<String, dynamic>> fruitData;
  final Function(int) onTap;
  final double paddingBottom;
  const FruitCardList({
    @required this.fruitData,
    this.onTap,
    this.paddingBottom = 0,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> fruitCards =
        Iterable<int>.generate(fruitData.length).toList().map((int counter) {
      return GestureDetector(
        onTap: () {
          onTap(counter);
        },
        child: FruitCard(
          assetPath: 'lib/assets/images/${fruitData[counter]['squareImage']}',
          family: fruitData[counter]['family'],
          isLiked: fruitData[counter]['isLiked'] ?? false,
          isDisliked: fruitData[counter]['isDisliked'] ?? false,
          numLikes: fruitData[counter]['numLikes'],
          numDislikes: fruitData[counter]['numDislikes'],
          healthInfo: fruitData[counter]['healthInfo'],
          title: fruitData[counter]['name'],
        ),
      );
    }).toList();
    return ListView(
      children: [
        ...fruitCards,
        paddingBottom > 0 ? SizedBox(height: paddingBottom) : Container(),
      ],
    );
  }
}
