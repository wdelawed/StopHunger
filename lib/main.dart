import 'package:flutter/material.dart';
import 'package:productivefamiliestest/stepper/first.dart';

void main() => runApp(ProductiveFamilies());

class ProductiveFamilies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.red),
      home: SplashPage(name: "khalid"),
    );
  }
}

class SplashPage extends StatefulWidget {
  SplashPage({Key key, String name}) : super(key: key);
  @override
  _SplashCreateState createState() => _SplashCreateState();
}

class _SplashCreateState extends State<SplashPage> {
  String name = "Mohamed";
  bool opened = false;
  @override
  Widget build(BuildContext context) {
    if (!opened) {
      Future.delayed(const Duration(milliseconds: 3000), () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => FirstStepper()));
      });
      setState(() {
        opened = true;
      });
    }
    return Stack(
      children: <Widget>[
        Image.asset(
          "assets/images/background.png",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
            backgroundColor: Colors.transparent,
            body: Center(child: Image.asset('assets/images/hunger.png')))
      ],
    );
  }
}
