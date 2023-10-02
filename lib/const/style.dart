import 'package:flutter/material.dart';
import 'package:news_app/const/strings.dart';

class N {
  static background(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Image.asset('images/bg.png', fit: BoxFit.fill));
  }

  static tabbar(String text) {
    return Tab(
        child: Text(text,
            style: const TextStyle(fontSize: 20, color: Colors.white)));
  }

  static List<Widget> tabappbar = [
    N.tabbar(category[0]),
    N.tabbar(category[1]),
    N.tabbar(category[2]),
    N.tabbar(category[3]),
    N.tabbar(category[4]),
    N.tabbar(category[5]),
    N.tabbar(category[6]),
  ];
  static appbar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      bottom: TabBar(
          isScrollable: true, indicatorColor: Colors.white, tabs: tabappbar),
    );
  }
}
