import 'package:flutter/material.dart';
import 'package:flutter_interact/src/movie_card/movie_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.pink[100],
      ),
      home: StepsViewer(),
    );
  }
}

class StepsViewer extends StatefulWidget {
  const StepsViewer({Key key}) : super(key: key);

  @override
  _StepsViewerState createState() => _StepsViewerState();
}

class _StepsViewerState extends State<StepsViewer> {
  String appBarTitleText = '';
  PageController _controller;

  @override
  void initState() {
    super.initState();
    appBarTitleText = 'Flutter Interact: Step 1';
    _controller = PageController()..addListener(_onPageSwipe);
  }

  void _onPageSwipe() {
    setState(() {
      appBarTitleText =
          'Flutter Interact: Step ${_controller.page.toInt() + 1}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(appBarTitleText)),
      body: SafeArea(
        child: PageView(
          controller: _controller,
          children: <Widget>[
            Centerer(child: MovieCardOne()),
            Centerer(child: MovieCardTwo()),
            Centerer(child: MovieCardThree()),
            Centerer(child: MovieCardFour()),
            Centerer(child: MovieCardFive()),
            Centerer(child: MovieCardSix()),
            Centerer(child: MovieCardSeven()),
            Centerer(child: MovieCardEight()),
            Center(child: MovieCardList()),
          ],
        ),
      ),
    );
  }
}

/// Wrapper to handle total horizontal+vertical centering
class Centerer extends StatelessWidget {
  final Widget child;
  const Centerer({this.child, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(child: child),
      ],
    );
  }
}
