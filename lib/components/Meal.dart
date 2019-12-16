import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:productivefamiliestest/Models/MealModel.dart';

class Meal extends StatefulWidget {
  final MealModel _meal;
  Meal(this._meal);
  @override
  State<StatefulWidget> createState() {
    return MealState(_meal);
  }
}

class MealState extends State<Meal> {
  int id = 0;
  String name = "test";
  String image = "assets/image/meal.png";
  String location = "Riyadh";
  double price = 0.0;

  MealState(MealModel meal) {
    name = meal.getName;
    image = meal.getImage;
    location = meal.getLocation;
    price = meal.getPrice;
    id = meal.getMealId;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: ConstrainedBox(
        constraints:
            BoxConstraints(minWidth: 170, maxWidth: 250, maxHeight: 182),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: Colors.white),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Image.asset('$image'),
                Container(
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.symmetric(vertical: 6),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Text(
                      '$name',
                      style: TextStyle(
                          fontFamily: 'Bukra',
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Text('\$$price',
                        style: TextStyle(
                            color: Color(0xffFF6A00),
                            fontFamily: 'Bukra',
                            fontSize: 12)),
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Text(
                          '$location',
                          style: TextStyle(
                              color: Color(0xffFF6A00),
                              fontFamily: 'Bukra',
                              fontSize: 12),
                        ),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Image.asset('assets/images/meal-location.png')),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      gradient: LinearGradient(
                          colors: <Color>[Color(0xFFEE0979), Color(0xffFF6A00)],
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight)),
                  margin: EdgeInsets.only(top: 5),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(maxHeight: 30),
                    child: FlatButton(
                      onPressed: _orderNow(id),
                      child: Center(
                        child: Text('أطلبه الان',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'bukra',
                                color: Colors.white,
                                fontSize: 10,
                                height: 1.6)),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _orderNow(getMealId) {}
}
