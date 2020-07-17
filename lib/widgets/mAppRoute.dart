import 'package:flutter/material.dart';


// 定义非状态组件
class MAppRoute extends StatelessWidget {

  // 源文件地址
  final String sourceFilePath;
  // 页面组件实例
  final Widget child;
  // 页面appbar的title
  final String _title;
  // 简单描述
  final String description;
  // 跳转链接
  final Map<String, String> links;
  // 页面路由名称
  final String _routeName;


  const MAppRoute({
    Key key,
    @required this.sourceFilePath,
    @required this.child,
    String title,
    this.description,
    this.links,
    String routeName
  }) :  _title = title,
        _routeName = routeName,
        super(key: key);

  String get routeName => this._routeName ?? '/${this.child.runtimeType.toString()}';
  String get title => _title ?? this.routeName;

  @override
  Widget build(BuildContext context) {


    return Container(
      child: Text('data'),
    );
  }
}