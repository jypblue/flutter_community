import 'package:flutter/material.dart';

// 首页关注频道
class HomeFollow extends StatefulWidget {
  HomeFollow({Key key}) : super(key: key);

  @override
  _HomeFollowState createState() => _HomeFollowState();
}

class _HomeFollowState extends State<HomeFollow> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          child: Text('data'),
        )
      ],
    );
  }
}
