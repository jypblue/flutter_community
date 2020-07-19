import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import '../../../styles/icons.dart';
import '../../../styles/colors.dart';
import '../../../widgets/mAppbar.dart';
import './discover.dart';
import './follow.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _activeIndex = 0;

  void _handleTopTabTap(index) {
    setState(() {
      _activeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MAppBar(
            height: 35,
            ctx: context,
            child: Column(children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 15.0, right: 15.0),
                child: Flex(
                  direction: Axis.horizontal,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        print('跳转搜索');
                      },
                      child: Container(
                        width: 77.0,
                        alignment: Alignment.centerLeft,
                        child: new Icon(
                          AppIcons.SEARCH,
                          size: 15,
                        ),
                      ),
                    ),
                    Expanded(child: Container()),
                    GestureDetector(
                      onTap: () {
                        print('关注');
                        _handleTopTabTap(0);
                      },
                      child: Container(
                        width: 77.0,
                        alignment: Alignment.center,
                        height: 35.0,
                        child: Text('关注',
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: _activeIndex == 0
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                                color: _activeIndex == 0
                                    ? AppColors.color333
                                    : AppColors.color999)),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        print('发现');
                        _handleTopTabTap(1);
                      },
                      child: Container(
                        width: 77.0,
                        alignment: Alignment.center,
                        height: 35.0,
                        child: Text('发现',
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: _activeIndex == 1
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                                color: _activeIndex == 1
                                    ? AppColors.color333
                                    : AppColors.color999)),
                      ),
                    ),
                    Expanded(child: Container()),
                    GestureDetector(
                      onTap: () {
                        print("分享点击");
                      },
                      child: Container(
                          alignment: Alignment.centerRight,
                          width: 77,
                          height: 24,
                          margin: EdgeInsets.only(left: 6),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(17.0),
                              ),
                              border: Border.all(
                                  color: Color(0xFFC13B38),
                                  width: 0.5,
                                  style: BorderStyle.solid)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              new Icon(
                                AppIcons.MAIL,
                                size: 11,
                                color: Color(0xFFC13B38),
                              ),
                              Text(
                                ' 分享图片',
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Color(0xFFC13B38),
                                ),
                              )
                            ],
                          )),
                    )
                  ],
                ),
              )
            ])),
        body: _activeIndex == 0 ? HomeFollow() : HomeDiscover());
  }
}
