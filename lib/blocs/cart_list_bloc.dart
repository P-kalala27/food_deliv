import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:food_app/blocs/provider.dart';
import 'package:food_app/model/food_item.dart';
import 'package:rxdart/rxdart.dart';

class CartListBloc extends BlocBase {
  CartListBloc();
  CartProvider provider = CartProvider();

  var _listController = BehaviorSubject<List<FoodItem>>.seeded([]);

  Stream<List<FoodItem>> get listStream => _listController.stream;

  Sink<List<FoodItem>> get listSink => _listController.sink;

  addToList(FoodItem foodItem) {
    listSink.add(
      provider.addToList(foodItem),
    );
  }

  removeFromList(FoodItem foodItem) {
    listSink.add(
      provider.removeToList(foodItem),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _listController.close();
    super.dispose();
  }
}
