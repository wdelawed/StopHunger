import 'package:flutter/material.dart';
import 'package:productivefamiliestest/account/login.dart';

void main() {
  runApp(Statistics());
}

class Statistics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.fromLTRB(4, 156, 4, 0),
                  child: Center(
                    child: Text(
                      "احصائيات هذا الاسبوع",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          height: 1.78,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          fontFamily: 'Bukra'),
                    ),
                  )),
              Container(
                margin: EdgeInsets.only(top: 14, left: 36, right: 36),
                child: Text(
                  "يمكنك متابعة الاحصائيات اليومية و المزيد",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    height: 2.08,
                    fontSize: 12,
                    fontFamily: 'Bukra',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 63, left: 17, right: 17),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.all(16),
                          child: Column(
                            children: <Widget>[
                              Center(
                                child: Image.asset('assets/images/family.png'),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 21),
                                child: Text(
                                  'عدد الأسر المنتجة',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'Bukra',
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 14),
                                  child: Text(
                                    '138 اسرة',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'Bukra',
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  )),
                              Container(
                                margin: EdgeInsets.only(top: 13, right: 10),
                                child: Center(
                                  child: Image.asset(
                                      'assets/images/seperator.png'),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(16),
                          child: Column(
                            children: <Widget>[
                              Center(
                                child:
                                    Image.asset('assets/images/breakfast.png'),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 21),
                                child: Text(
                                  'عدد الاكلات المضافة',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'Bukra',
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 14),
                                  child: Text(
                                    '114 وجبه',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'Bukra',
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  )),
                              Container(
                                margin: EdgeInsets.only(top: 13, right: 10),
                                child: Center(
                                  child: Image.asset(
                                      'assets/images/seperator.png'),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.all(16),
                          child: Column(
                            children: <Widget>[
                              Center(
                                child: Image.asset('assets/images/Flat.png'),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 21),
                                child: Text(
                                  'عدد الوجبات اليوم',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'Bukra',
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 14),
                                  child: Text(
                                    '138 اسرة',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'Bukra',
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  )),
                              Container(
                                margin: EdgeInsets.only(top: 13, right: 10),
                                child: Center(
                                  child: Image.asset(
                                      'assets/images/seperator.png'),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(16),
                          child: Column(
                            children: <Widget>[
                              Center(
                                child: Image.asset('assets/images/cash.png'),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 21),
                                child: Text(
                                  'عدد العمليات الشرائية',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'Bukra',
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 14),
                                  child: Text(
                                    'أسرة138  ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'Bukra',
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  )),
                              Container(
                                margin: EdgeInsets.only(top: 13, right: 10),
                                child: Center(
                                  child: Image.asset(
                                      'assets/images/seperator.png'),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                  child: Align(
                      alignment: FractionalOffset.bottomCenter,
                      child: Container(
                        margin: EdgeInsets.only(bottom: 16),
                        child: FlatButton(
                          color: Colors.transparent,
                          disabledColor: Colors.grey,
                          disabledTextColor: Colors.black,
                          padding: EdgeInsets.all(8.0),
                          splashColor: Colors.orangeAccent,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (builder) => LoginPage()));
                          },
                          child: Text(
                            "تخطي",
                            style:
                                TextStyle(fontFamily: 'Bukra', fontSize: 12.0),
                          ),
                        ),
                      )))
            ],
          ),
        ));
  }
}
