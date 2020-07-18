import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_community/styles/icons.dart';
import '../styles/colors.dart';

class MAppBar extends StatefulWidget implements PreferredSizeWidget {
  final double height;
  final Widget child;
  final BuildContext ctx;

  MAppBar({Key key, this.child, this.height = 70, this.ctx}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  _MAppBarState createState() => _MAppBarState();
}

class _MAppBarState extends State<MAppBar> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new SafeArea(
      top: true,
      child: widget.child,
    );
  }
}
