import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:productivefamiliestest/Models/MealModel.dart';
import 'package:productivefamiliestest/components/Meal.dart';

class HorizontalFoodList extends StatefulWidget {
  final List<MealModel> meals;
  HorizontalFoodList({Key key, this.meals}) : super(key: key);
  @override
  _HorizontalFoodListState createState() => _HorizontalFoodListState(meals);
}

class _HorizontalFoodListState extends State<HorizontalFoodList> {
  List<MealModel> meals = List<MealModel>();

  _HorizontalFoodListState(List<MealModel> meals) {
    this.meals = meals;
  }

  @override
  Widget build(BuildContext context) {
    if (meals.isEmpty)
      return Center(
        child: Text('Sorry but the meal list is empty'),
      );
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            FlatButton(
              child: Row(
                children: <Widget>[
                  ImageIcon(AssetImage('assets/images/arrow.png')),
                  Text('اظهار الكل',
                      style: TextStyle(fontFamily: 'Bukra', fontSize: 13)),
                ],
              ),
              onPressed: () {},
            ),
            Flexible(
              flex: 2,
              child: Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text(
                    'طلبات سابقة',
                    style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Bukra',
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 190,
          width: MediaQuery.of(context).size.width,
          child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: ListView(
                  scrollDirection: Axis.horizontal, children: _getItems())),
        )
      ],
    );
  }

  List<Meal> _getItems() {
    List<Meal> mymeal = List<Meal>();
    for (var i = 0; i < meals.length; i++) {
      mymeal.add(Meal(meals[i]));
    }
    return mymeal;
  }
}
