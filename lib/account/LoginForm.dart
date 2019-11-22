import 'package:flutter/material.dart';

// Create a Form widget.
class LoginForm extends StatefulWidget {
  @override
  LoginFormState createState() {
    return LoginFormState();
  }
}

class LoginFormState extends State<LoginForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Container(
          margin: EdgeInsets.only(top: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                  child: Column(
                children: <Widget>[
                  Container(
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(bottom: 14),
                      child: Text(
                        "اسم المستخدم",
                        style: TextStyle(
                            fontFamily: 'Bukra',
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      )),
                  TextFormField(
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Bukra',
                        color: Color(0xFF341931)),
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(width: 3, color: Color(0xFF341931))),
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0xFF5D1355), width: 3)),
                        prefixIcon: Image.asset(
                            'assets/images/_ionicons_svg_ios-contact.png'),
                        hintText: 'أدخل اسم المستخدم',
                        fillColor: Color(0xFF341931),
                        focusColor: Color(0xFF5D1355)),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please  some text';
                      }
                      return null;
                    },
                  ),
                ],
              )),
              Container(
                  margin: EdgeInsets.only(top: 25),
                  child: Column(
                    children: <Widget>[
                      Container(
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.only(bottom: 14),
                          child: Text(
                            "كلمة السر",
                            style: TextStyle(
                                fontFamily: 'Bukra',
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          )),
                      TextFormField(
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Bukra',
                            color: Color(0xFF341931)),
                        textAlign: TextAlign.right,
                        textDirection: TextDirection.rtl,
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    width: 3, color: Color(0xFF341931))),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xFF5D1355), width: 3)),
                            prefixIcon: Image.asset(
                                'assets/images/_ionicons_svg_ios-key.png'),
                            hintText: 'ادخل كلمة السر',
                            fillColor: Color(0xFF341931),
                            focusColor: Color(0xFF5D1355)),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please  some text';
                          }
                          return null;
                        },
                      ),
                    ],
                  )),
              Container(
                  margin: EdgeInsets.only(top: 50),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      gradient: LinearGradient(
                          colors: <Color>[Color(0xFFEE0979), Color(0xFFFF6A00)],
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight)),
                  child: SizedBox(
                    width: double.infinity,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      onPressed: () {},
                      textColor: Colors.white,
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 20),
                        child: Text(
                          "تسجيل الدخول",
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Bukra',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )),
              Container(
                margin: EdgeInsets.only(top: 40),
                child: Center(
                  child: Image.asset("assets/images/fingerprint.png"),
                ),
              )
            ],
          )),
    );
  }
}
