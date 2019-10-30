// import 'package:flutter/material.dart';

// class MovieCardEnd extends StatelessWidget {
//   const MovieCardEnd({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MovieCard(
//       title: 'The Internship',
//       startTimes: ['3PM', '3:30PM', '4PM'],
//       isImax: true,
//       assetPath: 'lib/assets/images/theinternship.jpg',
//     );
//   }
// }

// class MovieCard extends StatelessWidget {
//   final String title;
//   final List<String> startTimes;
//   final bool isImax;
//   final String assetPath;
//   const MovieCard({
//     @required this.title,
//     @required this.startTimes,
//     @required this.assetPath,
//     this.isImax = false,
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: <Widget>[
//           Container(
//             height: 96,
//             padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Text(
//                   title,
//                   style: Theme.of(context).textTheme.headline,
//                 ),
//                 Text(
//                   startTimes.join(' • '),
//                   style: Theme.of(context)
//                       .textTheme
//                       .subtitle
//                       .copyWith(fontWeight: FontWeight.w200),
//                 ),
//                 isImax
//                     ? Text('IMAX',
//                         style: TextStyle(
//                           color: Colors.pink,
//                           fontWeight: FontWeight.w700,
//                         ))
//                     : Text(''),
//               ],
//             ),
//           ),
//           ClipRRect(
//             borderRadius: BorderRadius.only(
//               topRight: Radius.circular(8),
//               bottomRight: Radius.circular(8),
//             ),
//             child: Image.asset(assetPath, height: 120, width: 84),
//           ),
//         ],
//       ),
//     );
//   }
// }
