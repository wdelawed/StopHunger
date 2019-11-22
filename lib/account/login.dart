import 'package:flutter/material.dart';
import 'package:productivefamiliestest/account/LoginForm.dart';
import 'package:productivefamiliestest/account/register.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 22),
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 72),
                alignment: Alignment.topRight,
                child: Text("تسجيل الدخول",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontFamily: 'Bukra',
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => RegisterPage()));
                      },
                      color: Color(0xFF4267B2),
                      textColor: Colors.white,
                      child: Container(
                        margin: EdgeInsets.fromLTRB(16, 11, 16, 11),
                        child: Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(right: 5),
                              child: Image.asset(
                                'assets/images/facebook-app-symbol.png',
                              ),
                            ),
                            Text(
                              'Facebook',
                              style: TextStyle(
                                fontSize: 17,
                                height: 1.3,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      onPressed: () {
                        /** */
                      },
                      color: Color(0xFFDD4B39),
                      textColor: Colors.white,
                      child: Container(
                        margin: EdgeInsets.fromLTRB(18, 11, 18, 11),
                        child: Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(right: 5),
                              child: Image.asset(
                                'assets/images/google.png',
                              ),
                            ),
                            Text(
                              'Google',
                              style: TextStyle(
                                fontSize: 17,
                                height: 1.3,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Row(children: <Widget>[
                  Expanded(child: Divider()),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      "أو",
                      style: TextStyle(fontFamily: 'Bukra', fontSize: 15),
                    ),
                  ),
                  Expanded(child: Divider()),
                ]),
              ),
              LoginForm()
            ],
          ),
        ),
      ),
    );
  }
}
