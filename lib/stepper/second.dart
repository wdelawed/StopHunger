import 'package:flutter/material.dart';
import 'package:productivefamiliestest/stepper/statistics.dart';

void main() {
  runApp(SecondStepper());
}

class SecondStepper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(16, 170, 16, 0),
                child: Image.asset(
                  "assets/images/stepper2.png",
                ),
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(4, 40, 4, 0),
                  child: Center(
                    child: Text(
                      "يمكنك مشاهدة الوصفات على منصتنا في وسائل التواصل الاجتماعى",
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
                  "يمكنك الان متابعة الوصفات و الوجبات الجديدة للأسر المنتجة قبل طلبها",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    height: 2.08,
                    fontSize: 12,
                    fontFamily: 'Bukra',
                  ),
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
                            navigateToNext(context);
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

  void navigateToNext(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Statistics()));
  }
}
