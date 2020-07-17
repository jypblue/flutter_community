import 'package:flutter/material.dart';
import 'app.dart';

void main() => runApp(new AppMain());

class AppMain extends StatelessWidget {
  const AppMain({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '社区',
      home: new App(),
      // theme: ThemeData(
      //   primarySwatch: Colors.red,
      // ),
      // routes: routers,
    );
  }
}
