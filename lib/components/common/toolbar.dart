import 'package:flutter/material.dart';

class ToolBar extends StatefulWidget {
  @override
  _ToolBarState createState() => _ToolBarState();
}

class _ToolBarState extends State<ToolBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Image.asset('assets/images/appBarImage.png'),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(22, 59, 22, 30),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Image.asset('assets/images/appBar-location.png'),
                    Image.asset('assets/images/appBar-notifucation.png'),
                    Image.asset('assets/images/appBar-search.png'),
                  ],
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'رصيد حسابك',
                      style: TextStyle(
                          fontFamily: 'Bukra',
                          fontSize: 13,
                          color: Colors.white),
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Container(),
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
      ),
    );
  }
}
