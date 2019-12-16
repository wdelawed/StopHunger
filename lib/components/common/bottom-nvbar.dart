import 'package:flutter/material.dart';
import 'package:productivefamiliestest/orders/main-page.dart';

class CustomNavbar extends StatefulWidget {
  @override
  _CustomNavbarState createState() => _CustomNavbarState();
}

class _CustomNavbarState extends State<CustomNavbar> {
  int _index = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: <Color>[Colors.white, Colors.white54],
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
      )),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(100))),
        margin: EdgeInsets.all(16),
        child: ConstrainedBox(
          constraints: BoxConstraints(maxHeight: 18),
          child: BottomNavigationBar(
            onTap: (index) {
              setState(() {
                _index = index;
              });
              homeState.setState(() {
                homeState.currentIndex = index;
              });
            },
            currentIndex: _index,
            elevation: 0,
            backgroundColor: Colors.transparent,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  activeIcon: ImageIcon(
                      AssetImage('assets/images/myoffers-icon-active.png')),
                  icon:
                      ImageIcon(AssetImage('assets/images/myoffers-icon.png')),
                  title: Text(
                    'العروض',
                    style: TextStyle(
                        color: Color(0xFFFF6A00),
                        fontFamily: 'Bukra',
                        fontSize: 9),
                  )),
              BottomNavigationBarItem(
                  activeIcon: ImageIcon(
                      AssetImage('assets/images/mystore-icon-active.png')),
                  icon: ImageIcon(AssetImage('assets/images/mystore-icon.png')),
                  title: Text(
                    'متجري',
                    style: TextStyle(
                        color: Color(0xFFFF6A00),
                        fontFamily: 'Bukra',
                        fontSize: 9),
                  )),
              BottomNavigationBarItem(
                  activeIcon: ImageIcon(
                      AssetImage('assets/images/myorders-icon-active.png')),
                  icon:
                      ImageIcon(AssetImage('assets/images/myorders-icon.png')),
                  title: Text(
                    'طلباتي',
                    style: TextStyle(
                        color: Color(0xFFFF6A00),
                        fontFamily: 'Bukra',
                        fontSize: 9),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
