import 'package:flutter/material.dart';

class MovieCardEight extends StatelessWidget {
  const MovieCardEight({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MovieCard(
      assetPath: 'lib/assets/images/star-trek.jpg',
      title: 'Star Trek',
      numLikes: 7,
      numDislikes: 2,
      isLiked: true,
      startTimes: ['3PM', '3:30PM', '4PM'],
      isImax: true,
    );
  }
}

class MovieCard extends StatelessWidget {
  final String assetPath;
  final String title;
  final List<String> startTimes;
  final int numLikes;
  final int numDislikes;
  final bool isLiked;
  final bool isDisliked;
  final bool isImax;
  const MovieCard({
    @required this.assetPath,
    @required this.title,
    @required this.startTimes,
    this.numLikes = 0,
    this.numDislikes = 0,
    this.isLiked = false,
    this.isDisliked = false,
    this.isImax = false,
    key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double horizontalMargin = 5;
    double cardPadding = 12;
    double pictureAndRatings = 124;
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
                    Text(startTimes.join(' • '),
                        style: Theme.of(context)
                            .textTheme
                            .subtitle
                            .copyWith(fontWeight: FontWeight.w200)),
                    isImax
                        ? Text(
                            'IMAX',
                            style: TextStyle(
                                color: Colors.pink,
                                fontWeight: FontWeight.bold),
                          )
                        : Text(''),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 100,
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
              right: 100,
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
