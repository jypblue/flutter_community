import 'package:flutter/material.dart';


class TopicPublishPage extends StatefulWidget {
  TopicPublishPage({Key key}) : super(key: key);

  @override
  _TopicPublishPageState createState() => _TopicPublishPageState();
}

class _TopicPublishPageState extends State<TopicPublishPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Topic publish Container Widget")
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