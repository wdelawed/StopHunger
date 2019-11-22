class MealModel {
  int _mealId;
  String _name;
  String _image;
  String _location;
  double _price;
  MealModel({name: "", image: "", location: "", price: 0, mealid: 0}) {
    _name = name;
    _price = price;
    _location = location;
    _image = image;
    _mealId = mealid;
  }
  String get getName {
    return _name;
  }

  String get getImage {
    return _image;
  }

  String get getLocation {
    return _location;
  }

  double get getPrice {
    return _price;
  }

  int get getMealId {
    return _mealId;
  }

  set setMealId(int mealId) {
    _mealId = mealId;
  }

  set setPrice(double price) {
    _price = price;
  }

  set setName(String name) {
    _name = name;
  }

  set setLocation(String location) {
    _location = location;
  }

  set setImage(String image) {
    _image = image;
  }
}
