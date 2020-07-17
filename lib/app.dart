import 'package:flutter/material.dart';
import 'package:flutter_community/styles/colors.dart';
import 'package:flutter_community/styles/icons.dart';
import './view/community/home/index.dart';
import './view/community/me/index.dart';
import './view/community/topic/publish.dart';
import './view/community/news/index.dart';
import './view/shop/home/index.dart';

class App extends StatefulWidget {
  @override
  State<App> createState() => new _AppState();
}

// _navigationViews & _pageList可以抽出去， 分社区和电商的tabbar List
class _AppState extends State<App> with TickerProviderStateMixin {
  int _currentIndex = 0;
  List<NavigationIconView> _navigationViews;
  List<StatefulWidget> _pageList;
  StatefulWidget _currentPage;

  @override
  void initState() {
    super.initState();
    _navigationViews = <NavigationIconView>[
      new NavigationIconView(
        icon: new Icon(AppIcons.HOME),
        title: new Text("首页"),
        vsync: this,
      ),
      new NavigationIconView(
        icon: new Icon(AppIcons.MESSAGE),
        title: new Text('消息'),
        vsync: this,
      ),
      new NavigationIconView(
        icon: new Icon(AppIcons.CAMERA),
        title: new Text('发布'),
        vsync: this,
      ),
      new NavigationIconView(
        icon: new Icon(AppIcons.ME),
        title: new Text("我的"),
        vsync: this,
      ),
      new NavigationIconView(
        icon: new Icon(AppIcons.STAR),
        title: new Text("去商城"),
        vsync: this,
      ),
    ];
    for (NavigationIconView view in _navigationViews) {
      view.controller.addListener(_rebuild);
    }

    _pageList = <StatefulWidget>[
      new HomePage(),
      new NewsPage(),
      new TopicPublishPage(),
      new MyPage(),
      new ShopHomePage()
    ];
    _currentPage = _pageList[_currentIndex];
  }

  void _rebuild() {
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
    for (NavigationIconView view in _navigationViews) {
      view.controller.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    final BottomNavigationBar bottomNavigationBar = new BottomNavigationBar(
        items: _navigationViews
            .map((NavigationIconView navigationIconView) =>
                navigationIconView.item)
            .toList(),
        currentIndex: _currentIndex,
        fixedColor: AppColors.tabbarActive,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(() {
            _navigationViews[_currentIndex].controller.reverse();
            _currentIndex = index;
            _navigationViews[_currentIndex].controller.forward();
            _currentPage = _pageList[_currentIndex];
          });
        });
    print(_currentIndex);
    print(_currentPage);
    return new MaterialApp(
      home: new Scaffold(
        body: new Center(child: _currentPage),
        bottomNavigationBar: bottomNavigationBar,
      ),
      // theme: GlobalConfig.themeData
    );
  }
}

// 抽出去
class NavigationIconView {
  NavigationIconView({Widget icon, Widget title, TickerProvider vsync})
      : item = new BottomNavigationBarItem(
          icon: icon,
          title: title,
        ),
        controller = new AnimationController(
            duration: kThemeAnimationDuration, vsync: vsync);

  final BottomNavigationBarItem item;
  final AnimationController controller;
}
