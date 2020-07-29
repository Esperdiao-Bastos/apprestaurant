import 'package:apprestaurant/models/order.dart';

class User {
  final String name;
  final String backgroundImageUrl;
  final String profilePicture;
  final List<Order> orders;
  final List<Order> cart;

  User(
      {this.name,
      this.orders,
      this.cart,
      this.backgroundImageUrl,
      this.profilePicture});
}
