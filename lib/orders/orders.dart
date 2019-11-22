import 'package:flutter/material.dart';
import 'package:productivefamiliestest/Models/MealModel.dart';
import 'package:productivefamiliestest/components/Meal.dart';

class Orders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6FA),
      body: Center(
          child: Meal(MealModel(
              image: 'assets/images/meal-placeHolder.png',
              name: 'كبسة بالفراخ',
              price: 65.0,
              location: 'الرياض'))),
    );
  }
}
