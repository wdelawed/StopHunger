import 'package:flutter/material.dart';

class MyDrawerButton extends StatefulWidget {
  final AnimationController animationController;
  MyDrawerButton({this.animationController});

  @override
  _MyDrawerButtonState createState() => _MyDrawerButtonState();
}

class _MyDrawerButtonState extends State<MyDrawerButton> {
  bool isopend = false;
  _MyDrawerButtonState({isopened: false});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: EdgeInsets.all(0.0),
        child: AnimatedIcon(
            color: Colors.white,
            icon: AnimatedIcons.menu_close,
            progress: widget.animationController),
      ),
      onTap: () {
        if (isopend) {
          widget.animationController.reverse();
          // Navigator.pop(context);
          setState(() {
            isopend = false;
          });
        } else {
          widget.animationController.forward();
          Scaffold.of(context).openEndDrawer();
          setState(() {
            isopend = true;
          });
        }
      },
    );
  }
}
