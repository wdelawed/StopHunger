import 'package:flutter/material.dart';
import 'package:productivefamiliestest/components/common/bottom-nvbar.dart';
import 'package:productivefamiliestest/components/common/toolbar.dart';
import 'package:productivefamiliestest/components/drawer.dart';
import 'package:productivefamiliestest/pages/myoffers-page.dart';
import 'package:productivefamiliestest/pages/myorders-page.dart';
import 'package:productivefamiliestest/pages/mystore-page.dart';

_HomePageState homeState;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() {
    homeState = _HomePageState();
    return homeState;
  }
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: MyDrawer(),
      appBar: ToolBar(height: 170),
      backgroundColor: Color(0xFFF5F6FA),
      body: Stack(
        children: <Widget>[
          _getSelectedChild(currentIndex),
          Positioned(
            bottom: 0,
            child: CustomNavbar(),
          )
        ],
      ),
    );
  }

  Widget _getSelectedChild(int i) {
    switch (i) {
      case 0:
        return MyOffers();
      case 1:
        return MyStore();
      case 2:
        return MyOrders();
      default:
        return MyStore();
    }
  }
}
