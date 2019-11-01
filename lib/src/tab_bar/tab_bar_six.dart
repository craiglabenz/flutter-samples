import 'dart:ui';
import 'package:flutter/material.dart';

class TabBarSix extends StatefulWidget {
  const TabBarSix({Key key}) : super(key: key);

  @override
  _TabBarSixState createState() => _TabBarSixState();
}

class _TabBarSixState extends State<TabBarSix> with TickerProviderStateMixin {
  int activeIndex;

  @override
  void initState() {
    super.initState();
    activeIndex = 1;
  }

  void changeActiveTab(int index) {
    setState(() {
      activeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Color(0xFFDDDDDD),
            width: 1,
          ),
        ),
        color: Color(0xDDFFFFFF),
      ),
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: TabBarIconSix(
                    icon: Icons.person,
                    index: 0,
                    onTap: changeActiveTab,
                    isActive: activeIndex == 0,
                    vsyncProvider: this,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: TabBarIconSix(
                    icon: Icons.home,
                    index: 1,
                    onTap: changeActiveTab,
                    isActive: activeIndex == 1,
                    vsyncProvider: this,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: TabBarIconSix(
                    icon: Icons.settings,
                    index: 2,
                    onTap: changeActiveTab,
                    isActive: activeIndex == 2,
                    vsyncProvider: this,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TabBarIconSix extends StatelessWidget {
  final IconData icon;
  final int index;
  final Function(int) onTap;
  final bool isActive;
  final TickerProvider vsyncProvider;
  const TabBarIconSix({
    @required this.icon,
    @required this.index,
    @required this.vsyncProvider,
    @required this.onTap,
    this.isActive = false,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap(index);
      },
      child: AnimatedSize(
        vsync: vsyncProvider,
        duration: Duration(milliseconds: 300),
        child: Icon(
          icon,
          size: isActive ? 36 : 24,
          color: isActive ? Colors.pink : Colors.black,
        ),
      ),
    );
  }
}
