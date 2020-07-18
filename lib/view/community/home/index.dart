import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../styles/icons.dart';
import '../../../widgets/mAppbar.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                    Container(
                      width: 77.0,
                      alignment: Alignment.centerLeft,
                      child: new Icon(
                        AppIcons.CAMERA,
                        size: 15,
                      ),
                    ),
                    Expanded(child: Container()),
                    Container(
                      width: 77.0,
                      alignment: Alignment.center,
                      height: 35.0,
                      child: Text('关注',
                          style: TextStyle(
                              fontSize: 17, color: Color(0xFF333333))),
                    ),
                    Container(
                      width: 77.0,
                      alignment: Alignment.center,
                      height: 35.0,
                      child: Text('发现',
                          style: TextStyle(
                              fontSize: 17, color: Color(0xFF333333))),
                    ),
                    Expanded(child: Container()),
                    new GestureDetector(
                      onTap: () {
                        print("Container clicked");
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
                                Icons.add,
                                size: 11,
                                color: Color(0xFFC13B38),
                              ),
                              Text(
                                '分享图片',
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
        body: ListView());
  }
}
