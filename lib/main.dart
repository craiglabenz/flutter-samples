import 'package:flutter/material.dart';
import 'package:flutter_interact/src/fruit_card/fruit_card.dart';
import 'package:flutter_interact/src/tab_bar/tab_bar.dart';
import 'package:flutter_interact/src/top_card/top_card.dart';

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

  void forward() async {
    await _controller.animateToPage(
      _controller.page.toInt() + 1,
      duration: Duration(milliseconds: 100),
      curve: Curves.easeOut,
    );
  }

  void backward() async {
    await _controller.animateToPage(
      _controller.page.toInt() - 1,
      duration: Duration(milliseconds: 100),
      curve: Curves.easeOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitleText),
        actions: [
          GestureDetector(child: Icon(Icons.arrow_forward), onTap: forward),
        ],
        leading: _controller.positions.isNotEmpty && _controller.page > 0
            ? GestureDetector(child: Icon(Icons.arrow_back), onTap: backward)
            : null,
      ),
      body: SafeArea(
        bottom: false,
        child: PageView(
          controller: _controller,
          children: <Widget>[
            Centerer(child: FruitCardOne()),
            Centerer(child: FruitCardTwo()),
            Centerer(child: FruitCardThree()),
            Centerer(child: FruitCardFour()),
            Centerer(child: FruitCardFive()),
            Centerer(child: FruitCardSix()),
            Centerer(child: FruitCardSeven()),
            Centerer(child: FruitCardEight()),
            Center(child: FruitCardList()),
            TabBarOne(),
            TabBarTwo(),
            Stack(
              children: <Widget>[Positioned(bottom: 0, child: TabBarThree())],
            ),
            Stack(
              children: <Widget>[Positioned(bottom: 0, child: TabBarFour())],
            ),
            Stack(
              children: <Widget>[Positioned(bottom: 0, child: TabBarFive())],
            ),
            Stack(
              children: <Widget>[Positioned(bottom: 0, child: TabBarSix())],
            ),
            Stack(
              children: <Widget>[
                Positioned(
                  top: 0,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: FruitCardList(),
                ),
                Positioned(bottom: 0, child: TabBarSeven()),
              ],
            ),
            TopCardOne(),
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
