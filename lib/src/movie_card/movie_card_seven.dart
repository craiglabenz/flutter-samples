import 'package:flutter/material.dart';

class MovieCardSeven extends StatelessWidget {
  const MovieCardSeven({Key key}) : super(key: key);

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
                      'Star Trek',
                      style: Theme.of(context).textTheme.headline,
                    ),
                    Text('3PM • 3:30PM • 4PM',
                        style: Theme.of(context)
                            .textTheme
                            .subtitle
                            .copyWith(fontWeight: FontWeight.w200)),
                    Text('IMAX',
                        style: TextStyle(
                            color: Colors.pink, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 100,
              top: 20,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.green[400]),
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('7', style: TextStyle(color: Colors.green[700])),
                    SizedBox(width: 4),
                    Icon(Icons.thumb_up, size: 16, color: Colors.green[700]),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 100,
              bottom: 20,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: grey),
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('2', style: TextStyle(color: darkGrey)),
                    SizedBox(width: 4),
                    Icon(Icons.thumb_down, size: 16, color: darkGrey),
                  ],
                ),
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
