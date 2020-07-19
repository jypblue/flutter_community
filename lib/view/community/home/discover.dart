import 'package:flutter/material.dart';

class HomeDiscover extends StatefulWidget {
  HomeDiscover({Key key}) : super(key: key);

  @override
  _HomeDiscoverState createState() => _HomeDiscoverState();
}

class _HomeDiscoverState extends State<HomeDiscover>
    with TickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 6, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  TabBar getTabBar() {
    return new TabBar(
      tabs: <Tab>[
        Tab(
          child: Text('推荐'),
        ),
        Tab(
          child: Text('推荐'),
        ),
        Tab(
          child: Text('推荐'),
        ),
        Tab(
          child: Text('推荐'),
        ),
        Tab(
          child: Text('推荐'),
        ),
        Tab(
          child: Text('推荐'),
        ),
      ],
      controller: controller,
    );
  }

  TabBarView getTabBarView(var tabs) {
    return new TabBarView(
      children: tabs,
      controller: controller,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        bottom: getTabBar(),
      ),
      body: getTabBarView(<Widget>[
        Container(
          child: Text('推荐'),
        ),
        Container(
          child: Text('推荐'),
        ),
        Container(
          child: Text('推荐'),
        ),
        Container(
          child: Text('推荐'),
        ),
        Container(
          child: Text('推荐'),
        ),
        Container(
          child: Text('推荐'),
        )
      ]),
    );
  }
}
