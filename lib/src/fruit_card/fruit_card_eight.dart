import 'package:flutter/material.dart';

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

class FruitCard extends StatelessWidget {
  final String assetPath;
  final String title;
  final String healthInfo;
  final int numLikes;
  final int numDislikes;
  final bool isLiked;
  final bool isDisliked;
  final String family;
  const FruitCard({
    @required this.assetPath,
    @required this.title,
    @required this.healthInfo,
    @required this.family,
    this.numLikes = 0,
    this.numDislikes = 0,
    this.isLiked = false,
    this.isDisliked = false,
    key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double horizontalMargin = 5;
    double cardPadding = 12;
    double pictureAndRatings = 164;
    Color grey = const Color(0xFFDDDDDD);
    Color darkGrey = const Color(0xFFBBBBBB);
    return Card(
      margin: EdgeInsets.all(horizontalMargin),
      child: Container(
        height: 120,
        child: Stack(
          children: <Widget>[
            Positioned(
              left: cardPadding,
              top: cardPadding,
              height: 96,
              child: Container(
                width: MediaQuery.of(context).size.width -
                    (cardPadding * 2) -
                    (horizontalMargin * 2) -
                    pictureAndRatings,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: Theme.of(context).textTheme.headline,
                    ),
                    Text(healthInfo,
                        style: Theme.of(context)
                            .textTheme
                            .subtitle
                            .copyWith(fontWeight: FontWeight.w200)),
                    Text(
                      family,
                      style: TextStyle(
                          color: Colors.pink, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: pictureAndRatings - 30,
              top: 20,
              child: PillBorder(
                borderColor: isLiked ? Colors.green[400] : grey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      numLikes.toString(),
                      style: TextStyle(
                        color: isLiked ? Colors.green[700] : darkGrey,
                      ),
                    ),
                    SizedBox(width: 4),
                    Icon(
                      Icons.thumb_up,
                      size: 16,
                      color: isLiked ? Colors.green[700] : darkGrey,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: pictureAndRatings - 30,
              bottom: 20,
              child: PillBorder(
                borderColor: isDisliked ? Colors.red[400] : grey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      numDislikes.toString(),
                      style: TextStyle(
                        color: isDisliked ? Colors.red[700] : darkGrey,
                      ),
                    ),
                    SizedBox(width: 4),
                    Icon(
                      Icons.thumb_down,
                      size: 16,
                      color: isDisliked ? Colors.red[700] : darkGrey,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(4),
                  bottomRight: Radius.circular(4),
                ),
                child: Image.asset(assetPath, height: 120),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PillBorder extends StatelessWidget {
  final Widget child;
  final Color borderColor;
  const PillBorder({
    @required this.child,
    @required this.borderColor,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: borderColor),
        borderRadius: BorderRadius.all(Radius.circular(100)),
      ),
      child: child,
    );
  }
}
