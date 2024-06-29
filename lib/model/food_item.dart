import 'package:meta/meta.dart';

FoodItemList foodItemList = FoodItemList(
  foodItems: [
    FoodItem(
      id: 1,
      title: "Pain Jambon",
      hotel: "Las Vegas Hotel",
      price: 15.5,
      imgUrl:
          "https://cdn.pixabay.com/photo/2017/09/28/18/13/bread-2796393_1280.jpg",
    ),
    FoodItem(
      id: 2,
      title: "Rouleau de Printemps",
      hotel: "Las Vegas Hotel",
      price: 15.5,
      imgUrl:
          "https://cdn.pixabay.com/photo/2021/11/01/15/52/spring-roll-6760871_640.jpg",
    ),
    FoodItem(
      id: 3,
      title: "Pizza",
      hotel: "Las Vegas Hotel",
      price: 15.5,
      imgUrl:
          "https://cdn.pixabay.com/photo/2016/04/09/09/22/pizza-1317699_640.jpg",
    ),
    FoodItem(
      id: 4,
      title: "Sushi",
      hotel: "Las Vegas Hotel",
      price: 15.5,
      imgUrl:
          "https://cdn.pixabay.com/photo/2016/04/09/09/22/pizza-1317699_640.jpg",
    ),
    FoodItem(
      id: 5,
      title: "Saumon",
      hotel: "Las Vegas Hotel",
      price: 15.5,
      imgUrl:
          "https://cdn.pixabay.com/photo/2016/04/09/09/22/pizza-1317699_640.jpg",
    ),
    FoodItem(
      id: 6,
      title: "Crevette",
      hotel: "Las Vegas Hotel",
      price: 15.5,
      imgUrl:
          "https://cdn.pixabay.com/photo/2016/04/09/09/22/pizza-1317699_640.jpg",
    ),
    FoodItem(
      id: 7,
      title: "Beach BBQ Burger",
      hotel: "Las Vegas Hotel",
      price: 15.5,
      imgUrl:
          "https://cdn.pixabay.com/photo/2017/09/28/18/13/bread-2796393_1280.jpg",
    ),
  ],
);

class FoodItemList {
  late List<FoodItem> foodItems;

  FoodItemList({required this.foodItems});
}

class FoodItem {
  late int id;
  late String title;
  late String hotel;
  late double price;
  late String imgUrl;
  late int quantity;

  FoodItem(
      {required this.id,
      required this.title,
      required this.hotel,
      required this.price,
      required this.imgUrl,
      this.quantity = 1});

  void incrementQuantity() {
    quantity = quantity + 1;
  }

  void decrementQuantity() {
    quantity = quantity - 1;
  }
}
