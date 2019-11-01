import 'package:flutter/material.dart';

import 'package:flutter_interact/src/fruit_card/fruit_card.dart';

class FruitCardEight extends StatelessWidget {
  const FruitCardEight({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FruitCard(
      assetPath: 'lib/assets/images/lime.jpg',
      title: 'Lime',
      numLikes: 7,
      numDislikes: 2,
      isLiked: true,
      family: 'Citrus',
      healthInfo: '9 calories',
    );
  }
}
