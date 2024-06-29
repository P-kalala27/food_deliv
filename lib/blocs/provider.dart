import 'package:food_app/model/food_item.dart';

class CartProvider {
  List<FoodItem> foodItems = [];

  List<FoodItem> addToList(FoodItem foodItem) {
    foodItems.add(foodItem);
    return foodItems;
  }

  List<FoodItem> removeToList(FoodItem foodItem) {
    foodItems.remove(foodItem);
    return foodItems;
  }
}
