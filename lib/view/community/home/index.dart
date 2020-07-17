import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
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
        title: "Home Container Widget",
        height: 74,
        ctx: context,
        header: 'Home'
      ),
      body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20.0),
          children: <Widget>[

          ]
        )
    );
  }
}