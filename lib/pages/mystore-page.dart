import 'package:flutter/material.dart';
import 'package:productivefamiliestest/Models/MealModel.dart';
import 'package:productivefamiliestest/components/Meal.dart';
import 'package:productivefamiliestest/components/horizontalList.dart';

class MyStore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(mainAxisSize: MainAxisSize.max, children: <Widget>[
        HorizontalFoodList(meals: <MealModel>[
          MealModel(
              location: 'الرياض',
              name: 'hello',
              price: 70.0,
              image: 'assets/images/meal-placeHolder.png'),
          MealModel(
              location: 'الرياض',
              name: 'all',
              price: 70.0,
              image: 'assets/images/meal-placeHolder.png'),
          MealModel(
              location: 'الرياض',
              name: 'nice',
              price: 70.0,
              image: 'assets/images/meal-placeHolder.png'),
          MealModel(
              location: 'الرياض',
              name: 'to',
              price: 70.0,
              image: 'assets/images/meal-placeHolder.png'),
          MealModel(
              location: 'الرياض',
              name: 'meet',
              price: 700.0,
              image: 'assets/images/meal-placeHolder.png'),
        ]),
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
                    'مفضلاتي',
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
        Container(
          height: 700,
          child: GridView.extent(
              primary: false,
              mainAxisSpacing: 10,
              maxCrossAxisExtent: 250,
              children: <Widget>[
                Container(
                  child: Meal(MealModel(
                      location: 'الرياض',
                      name: 'hello',
                      price: 70.0,
                      image: 'assets/images/meal-expanded.png')),
                ),
                Container(
                  child: Meal(MealModel(
                      location: 'الرياض',
                      name: 'hello',
                      price: 70.0,
                      image: 'assets/images/meal-expanded.png')),
                ),
                Container(
                  child: Meal(MealModel(
                      location: 'الرياض',
                      name: 'hello',
                      price: 70.0,
                      image: 'assets/images/meal-expanded.png')),
                ),
                Container(
                  child: Meal(MealModel(
                      location: 'الرياض',
                      name: 'hello',
                      price: 70.0,
                      image: 'assets/images/meal-expanded.png')),
                ),
                Container(
                  child: Meal(MealModel(
                      location: 'الرياض',
                      name: 'hello',
                      price: 70.0,
                      image: 'assets/images/meal-expanded.png')),
                ),
                Container(
                  child: Meal(MealModel(
                      location: 'الرياض',
                      name: 'hello',
                      price: 70.0,
                      image: 'assets/images/meal-expanded.png')),
                ),
              ]),
        ),
      ]),
    );
  }
}
