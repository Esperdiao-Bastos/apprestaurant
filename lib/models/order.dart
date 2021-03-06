import 'package:apprestaurant/models/food.dart';
import 'package:apprestaurant/models/restaurant.dart';

class Order {
  final Restaurant restaurant;
  final Food food;
  final String date;
  int quantity;

  Order({
    this.date,
    this.restaurant,
    this.food,
    this.quantity,
  });
}
