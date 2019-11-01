import 'package:flutter/material.dart';

class TabBarFive extends StatefulWidget {
  const TabBarFive({Key key}) : super(key: key);

  @override
  _TabBarFiveState createState() => _TabBarFiveState();
}

class _TabBarFiveState extends State<TabBarFive> with TickerProviderStateMixin {
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          TabBarIcon(
            icon: Icons.person,
            index: 0,
            onTap: changeActiveTab,
            isActive: activeIndex == 0,
            vsyncProvider: this,
          ),
          TabBarIcon(
            icon: Icons.home,
            index: 1,
            onTap: changeActiveTab,
            isActive: activeIndex == 1,
            vsyncProvider: this,
          ),
          TabBarIcon(
            icon: Icons.settings,
            index: 2,
            onTap: changeActiveTab,
            isActive: activeIndex == 2,
            vsyncProvider: this,
          ),
        ],
      ),
    );
  }
}

class TabBarIcon extends StatelessWidget {
  final IconData icon;
  final int index;
  final Function(int) onTap;
  final bool isActive;
  final TickerProvider vsyncProvider;
  const TabBarIcon({
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
