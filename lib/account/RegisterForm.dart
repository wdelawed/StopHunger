import 'package:flutter/material.dart';
import 'package:productivefamiliestest/orders/orders.dart';

// Create a Form widget.
class RegisterForm extends StatefulWidget {
  @override
  RegisterFormState createState() {
    return RegisterFormState();
  }
}

class RegisterFormState extends State<RegisterForm> {
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
                  margin: EdgeInsets.only(top: 25),
                  child: Column(
                    children: <Widget>[
                      Container(
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.only(bottom: 14),
                          child: Text(
                            "تأكيد كلمة السر",
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
                            hintText: 'تأكيد كلمة السر',
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
                            "البريد الالكتروني",
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
                            prefixIcon:
                                Image.asset('assets/images/message.png'),
                            hintText: 'ادخل عنوان بريدك الالكتروني',
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
                            "المدينه",
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
                            prefixIcon:
                                Image.asset('assets/images/location.png'),
                            hintText: 'أدخل عنوان السكن',
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
                            "رقم الجوال",
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
                            prefixIcon: Image.asset('assets/images/phone.png'),
                            hintText: 'أدخل رقم جوالك',
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
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => Orders()));
                      },
                      textColor: Colors.white,
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 20),
                        child: Text(
                          "تسجيل حساب جديد",
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Bukra',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )),
            ],
          )),
    );
  }
}
