import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';



class ShopHomePage extends StatefulWidget {
  ShopHomePage({Key key}) : super(key: key);

  @override
  _ShopHomePageState createState() => _ShopHomePageState();
}

class _ShopHomePageState extends State<ShopHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shop Home Container Widget")
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