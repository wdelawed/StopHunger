import 'package:flutter/material.dart';
import 'package:productivefamiliestest/components/common/drawerButton.dart';

class ToolBar extends StatefulWidget implements PreferredSizeWidget {
  final double height;
  ToolBar({Key key, @required this.height}) : super(key: key);
  @override
  _ToolBarState createState() => _ToolBarState(height: height);

  @override
  Size get preferredSize => Size.fromHeight(height);
}

class _ToolBarState extends State<ToolBar> with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  bool isPlaying = false;
  double height = 200;
  _ToolBarState({this.height});

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            'assets/images/appBarImage.png',
            fit: BoxFit.fitWidth,
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(22, 59, 22, 30),
          child: Column(
            children: <Widget>[
              ConstrainedBox(
                constraints: BoxConstraints(maxHeight: 22),
                child: Row(
                  children: <Widget>[
                    MyDrawerButton(
                      animationController: _animationController,
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Image.asset(
                            'assets/images/appBar-notification.png'),
                      ),
                    )),
                    Image.asset('assets/images/appBar-search.png'),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'رصيد حسابك',
                    style: TextStyle(
                        fontFamily: 'Bukra', fontSize: 13, color: Colors.white),
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        gradient: LinearGradient(
                          colors: <Color>[Color(0xffFF6A00), Color(0xFFEE0979)],
                        )),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(maxHeight: 36),
                      child: FlatButton(
                        onPressed: () {},
                        child: Text('تاريخ المعاملات',
                            style: TextStyle(
                                fontFamily: 'Bukra',
                                fontSize: 12,
                                color: Colors.white)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text('\$48,374.68',
                          style: TextStyle(
                              height: 1.32,
                              color: Colors.white,
                              fontSize: 28,
                              fontFamily: 'Bukra')),
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
