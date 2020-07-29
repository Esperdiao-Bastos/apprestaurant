import 'package:apprestaurant/models/food.dart';
import 'package:apprestaurant/models/order.dart';
import 'package:apprestaurant/models/restaurant.dart';
import 'package:apprestaurant/models/user.dart';

// COMIDA
final _bitoque =
    Food(imageUrl: 'assets/images/1.jpg', name: 'Bitoque', price: 8.99);
final _calderada =
    Food(imageUrl: 'assets/images/2.jpg', name: 'Calderada', price: 17.99);
final _arroz =
    Food(imageUrl: 'assets/images/3.jpg', name: 'Funge', price: 14.99);
final _kizaca =
    Food(imageUrl: 'assets/images/4.jpg', name: 'Samuja', price: 13.99);
final _feijoada =
    Food(imageUrl: 'assets/images/5.jpg', name: 'Carne', price: 9.99);
final _funge =
    Food(imageUrl: 'assets/images/6.jpg', name: 'Hamburger', price: 14.99);
final _samucha =
    Food(imageUrl: 'assets/images/7.jpg', name: 'Feijoada', price: 11.99);
final _frango =
    Food(imageUrl: 'assets/images/8.jpg', name: 'Peixe', price: 12.99);

// Restaurants
final _restaurant0 = Restaurant(
  imageUrl: 'assets/images/restaurant0.jpg',
  name: 'Restaurante0',
  address: 'Cacuaco, Nova URB',
  rating: 5,
  menu: [_kizaca, _calderada, _bitoque],
);
final _restaurant1 = Restaurant(
  imageUrl: 'assets/images/restaurant1.jpg',
  name: 'Restaurante1',
  address: 'Cacuaco, Nova URB',
  rating: 4,
  menu: [
    _calderada,
    _calderada,
    _calderada,
    _bitoque,
    _samucha,
    _feijoada,
    _arroz,
    _funge
  ],
);
final _restaurant2 = Restaurant(
  imageUrl: 'assets/images/restaurant2.jpg',
  name: 'Restaurante2',
  address: 'Cacuaco, Nova URB',
  rating: 4,
  menu: [
    _calderada,
    _calderada,
    _calderada,
    _bitoque,
    _samucha,
    _feijoada,
    _arroz,
    _funge
  ],
);
final _restaurant3 = Restaurant(
  imageUrl: 'assets/images/restaurant3.jpg',
  name: 'Restaurante3',
  address: 'Cacuaco, Nova URB',
  rating: 2,
  menu: [
    _calderada,
    _calderada,
    _calderada,
    _bitoque,
    _samucha,
    _feijoada,
    _arroz,
    _funge
  ],
);
final _restaurant4 = Restaurant(
  imageUrl: 'assets/images/restaurant4.jpg',
  name: 'Restaurante4',
  address: 'Cacuaco, Nova URB',
  rating: 3,
  menu: [_frango, _bitoque, _arroz, _funge],
);

final List<Restaurant> restaurants = [
  _restaurant0,
  _restaurant1,
  _restaurant2,
  _restaurant3,
  _restaurant4,
];

// User
final currentUser = User(
  name: 'Esperdiao Bastos',
  backgroundImageUrl: 'assets/images/post1.jpg',
  profilePicture: 'assets/images/yano.png',
  orders: [
    Order(
      date: 'Nov 10, 2019',
      food: _calderada,
      restaurant: _restaurant2,
      quantity: 1,
    ),
    Order(
      date: 'Nov 8, 2019',
      food: _funge,
      restaurant: _restaurant0,
      quantity: 3,
    ),
    Order(
      date: 'Nov 5, 2019',
      food: _frango,
      restaurant: _restaurant1,
      quantity: 2,
    ),
    Order(
      date: 'Nov 2, 2019',
      food: _kizaca,
      restaurant: _restaurant3,
      quantity: 1,
    ),
    Order(
      date: 'Nov 1, 2019',
      food: _bitoque,
      restaurant: _restaurant4,
      quantity: 1,
    ),
  ],
  cart: [
    Order(
      date: 'Nov 11, 2019',
      food: _arroz,
      restaurant: _restaurant2,
      quantity: 2,
    ),
    Order(
      date: 'Nov 11, 2019',
      food: _frango,
      restaurant: _restaurant2,
      quantity: 1,
    ),
    Order(
      date: 'Nov 11, 2019',
      food: _samucha,
      restaurant: _restaurant3,
      quantity: 1,
    ),
    Order(
      date: 'Nov 11, 2019',
      food: _kizaca,
      restaurant: _restaurant4,
      quantity: 3,
    ),
    Order(
      date: 'Nov 11, 2019',
      food: _bitoque,
      restaurant: _restaurant1,
      quantity: 2,
    ),
  ],
);
