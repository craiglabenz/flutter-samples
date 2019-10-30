import 'package:flutter/material.dart';

class MovieCardFour extends StatelessWidget {
  const MovieCardFour({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double horizontalMargin = 5;
    double cardPadding = 12;
    double pictureAndRatings = 124;
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
                // padding:
                //     EdgeInsets.symmetric(horizontal: cardPadding, vertical: 4),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Star Trek'),
                    Text('3PM • 3:30PM • 4PM'),
                    Text('IMAX'),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 100,
              top: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('6'),
                  Icon(Icons.thumb_up),
                ],
              ),
            ),
            Positioned(
              right: 100,
              bottom: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('2'),
                  Icon(Icons.thumb_down),
                ],
              ),
            ),
            Positioned(
              right: 0,
              child:
                  Image.asset('lib/assets/images/star-trek.jpg', height: 120),
            ),
          ],
        ),
      ),
    );
  }
}
