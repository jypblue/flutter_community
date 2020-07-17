import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_community/styles/icons.dart';
import '../styles/colors.dart';

class MAppBar extends StatefulWidget implements PreferredSizeWidget {
  final double height;
  final Widget child;
  final String title;
  final String back;
  final String header;
  final BuildContext ctx;

  MAppBar(
      {Key key,
      this.child,
      this.title,
      this.height = 70,
      this.header = 'Community',
      this.back = '',
      this.ctx})
      : super(key: key);

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
      child: widget.child == null
          ? new CommunityHeader(title: widget.title, back: widget.back)
          : widget.child,
    );
  }
}

class CommunityHeader extends StatelessWidget {
  final String _back;
  final String _title;
  const CommunityHeader({
    Key key,
    String title,
    String back,
  })  : _title = title,
        _back = back,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 69.0,
      padding: EdgeInsets.only(top: 25.0),
      decoration: BoxDecoration(color: AppColors.white),
      child: Stack(alignment: Alignment.center, children: <Widget>[
        Positioned(
            child: Row(children: <Widget>[
              GestureDetector(
                onTap: () {
                  if (Navigator.canPop(context)) {
                    Navigator.pop(context);
                  }
                },
                child: Container(
                  width: 52,
                  height: 44,
                  padding: EdgeInsets.only(left: 18, right: 6),
                  alignment: Alignment.center,
                  child: SvgPicture.asset(AppIcons.ICON_BACK,
                      width: 15.0, color: Color(0xFF000000)),
                ),
              ),
              Text(
                this._back,
                style: TextStyle(fontSize: 16, color: Color(0xFF000000)),
              )
            ]),
            left: 0,
            top: 0),
        Container(
            child: Text(
          this._title,
          style: TextStyle(fontSize: 16, color: Color(0xFF000000)),
        ))
      ]),
    );
  }
}
