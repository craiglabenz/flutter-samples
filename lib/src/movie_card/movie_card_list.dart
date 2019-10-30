import 'package:flutter/material.dart';
import 'package:flutter_interact/src/movie_card/movie_card.dart';

class MovieCardList extends StatelessWidget {
  const MovieCardList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        MovieCard(
          assetPath: 'lib/assets/images/star-trek.jpg',
          isImax: true,
          isLiked: true,
          numLikes: 7,
          numDislikes: 2,
          startTimes: ['3PM', '3:30PM', '4PM'],
          title: 'Star Trek',
        ),
        MovieCard(
          assetPath: 'lib/assets/images/inception.jpg',
          isImax: true,
          isLiked: true,
          startTimes: ['12PM', '3PM', '3:30PM', '4PM', '7PM'],
          numLikes: 10,
          numDislikes: 3,
          title: 'Inception',
        ),
        MovieCard(
          assetPath: 'lib/assets/images/the-matrix.jpg',
          isImax: false,
          numLikes: 5,
          numDislikes: 6,
          startTimes: ['3PM', '4PM'],
          title: 'The Matrix',
        ),
        MovieCard(
          assetPath: 'lib/assets/images/dumb-and-dumber.jpg',
          isImax: true,
          numLikes: 12,
          numDislikes: 11,
          startTimes: ['3PM', '4:30PM', '6PM'],
          title: 'Dumb and Dumber',
        ),
        MovieCard(
          assetPath: 'lib/assets/images/minority-report.jpg',
          isDisliked: true,
          numLikes: 4,
          numDislikes: 21,
          startTimes: ['11AM', '2:30PM', '4PM'],
          title: 'Minority Report',
        ),
        MovieCard(
          assetPath: 'lib/assets/images/sphere.jpg',
          numLikes: 4,
          numDislikes: 1,
          startTimes: ['1PM', '2:30PM', '5PM'],
          title: 'Sphere',
        ),
        MovieCard(
          assetPath: 'lib/assets/images/enemy-of-the-state.jpg',
          numLikes: 9,
          numDislikes: 0,
          startTimes: ['1PM', '3:30PM', '7PM'],
          title: 'Enemy of the State',
        ),
      ],
    );
  }
}
