import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Stack(
              children: <Widget>[
                Image.asset('assets/images/appBarImage.png'),
                Container(
                  margin: EdgeInsets.only(left: 71, top: 40, bottom: 41),
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 16, top: 20),
                        child: Column(
                          children: <Widget>[
                            Text('عبد الله السيد سالم',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Bukra',
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold)),
                            Text('مشترى',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Bukra',
                                    fontSize: 13))
                          ],
                        ),
                      ),
                      Image.asset('assets/images/drawer/avatar.png'),
                    ],
                  ),
                )
              ],
            ),
            decoration: BoxDecoration(color: Color(0xFFE32B61)),
            padding: EdgeInsets.all(0),
          ),
          ListTile(
            trailing: Image.asset('assets/images/drawer/first.png'),
            title: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'الرمز الترويجى',
                  style: TextStyle(
                      color: Color(0xFF1E1E1E),
                      fontFamily: 'Bukra',
                      fontSize: 13),
                )),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          Divider(
            color: Color(0xFFD8D8D8),
            height: 0.6,
          ),
          ListTile(
            trailing: Image.asset('assets/images/drawer/second.png'),
            title: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'الصفحة الشخصية',
                  style: TextStyle(
                      color: Color(0xFF1E1E1E),
                      fontFamily: 'Bukra',
                      fontSize: 13),
                )),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          Divider(
            color: Color(0xFFD8D8D8),
            height: 0.6,
          ),
          ListTile(
            trailing: Image.asset('assets/images/drawer/third.png'),
            title: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'الفواتير',
                  style: TextStyle(
                      color: Color(0xFF1E1E1E),
                      fontFamily: 'Bukra',
                      fontSize: 13),
                )),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          Divider(
            color: Color(0xFFD8D8D8),
            height: 0.6,
          ),
          ListTile(
            trailing: Image.asset('assets/images/drawer/fourth.png'),
            title: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'خيارات الدفع',
                  style: TextStyle(
                      color: Color(0xFF1E1E1E),
                      fontFamily: 'Bukra',
                      fontSize: 13),
                )),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          Divider(
            color: Color(0xFFD8D8D8),
            height: 0.6,
          ),
          ListTile(
            trailing: Image.asset('assets/images/drawer/fifth.png'),
            title: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'الدعم',
                  style: TextStyle(
                      color: Color(0xFF1E1E1E),
                      fontFamily: 'Bukra',
                      fontSize: 13),
                )),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          Divider(
            color: Color(0xFFD8D8D8),
            height: 0.6,
          ),
          ListTile(
            trailing: Image.asset('assets/images/drawer/sixth.png'),
            title: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'الاعدادات',
                  style: TextStyle(
                      color: Color(0xFF1E1E1E),
                      fontFamily: 'Bukra',
                      fontSize: 13),
                )),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          Divider(
            color: Color(0xFFD8D8D8),
            height: 0.6,
          ),
          ListTile(
            trailing: Image.asset('assets/images/drawer/seventh.png'),
            title: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'استفتاء',
                  style: TextStyle(
                      color: Color(0xFF1E1E1E),
                      fontFamily: 'Bukra',
                      fontSize: 13),
                )),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
        ],
      ),
    );
  }
}
