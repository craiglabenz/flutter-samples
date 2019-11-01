import 'package:flutter/material.dart';
import 'package:flutter_interact/src/fruit_card/fruit_card.dart';

class FruitCardList extends StatelessWidget {
  const FruitCardList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        FruitCard(
          assetPath: 'lib/assets/images/lime.jpg',
          family: 'Citrus',
          isLiked: true,
          numLikes: 7,
          numDislikes: 2,
          healthInfo: '9 calories',
          title: 'Lime',
        ),
        FruitCard(
          assetPath: 'lib/assets/images/tomato.jpg',
          family: 'Nightshade',
          isLiked: true,
          healthInfo: '12 calories',
          numLikes: 10,
          numDislikes: 3,
          title: 'Tomato',
        ),
        FruitCard(
          assetPath: 'lib/assets/images/kiwi.jpg',
          family: 'Actinidiaceae',
          numLikes: 5,
          numDislikes: 6,
          healthInfo: '20 calories',
          title: 'Kiwi',
        ),
        FruitCard(
          assetPath: 'lib/assets/images/lemon.jpg',
          family: 'Citrus',
          numLikes: 12,
          numDislikes: 11,
          healthInfo: '9 calories',
          title: 'Lemon',
        ),
        FruitCard(
          assetPath: 'lib/assets/images/orange.jpg',
          isDisliked: true,
          numLikes: 4,
          numDislikes: 21,
          healthInfo: '9 calories',
          family: 'Citrus',
          title: 'Orange',
        ),
        FruitCard(
          assetPath: 'lib/assets/images/strawberry.jpg',
          numLikes: 4,
          numDislikes: 1,
          healthInfo: '9 calories',
          family: 'Berry',
          title: 'Strawberry',
        ),
        FruitCard(
          assetPath: 'lib/assets/images/avocado.jpg',
          numLikes: 9,
          numDislikes: 0,
          healthInfo: '9 calories',
          family: 'Guacamole ingrediens',
          title: 'Avocado',
        ),
      ],
    );
  }
}
