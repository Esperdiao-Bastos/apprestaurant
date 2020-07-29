import 'package:apprestaurant/models/restaurant.dart';
import 'package:apprestaurant/models/food.dart';
import 'package:apprestaurant/widgets/Rating.dart';
import 'package:flutter/material.dart';

class RestaurantScreen extends StatefulWidget {
  static const String id = 'RestaurantScreen';
//==============================================================================
  final Restaurant restaurant;
  RestaurantScreen({this.restaurant});
//==============================================================================
  @override
  _RestaurantScreen createState() => _RestaurantScreen();
}

class _RestaurantScreen extends State<RestaurantScreen> {
//==============================================================================
  Color _iconColor = Colors.white;
  //MENU QUE APARECE A COMIDA NA GRIDVIEW
  _buildMenuItem(Food menuItem) {
    return Center(
      child: Stack(alignment: Alignment.center, children: <Widget>[
        Container(
          height: 174.0,
          width: 174.0,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(menuItem.imageUrl),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(14.0)),
        ),
        Container(
          height: 174.0,
          width: 174.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.0),
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.black.withOpacity(0.2),
                    Colors.black87.withOpacity(0.2),
                    Colors.black54.withOpacity(0.2),
                    Colors.black38.withOpacity(0.2),
                  ],
                  stops: [
                    0.1,
                    0.4,
                    0.6,
                    0.9,
                  ])),
        ),
//==============================================================================
        Positioned(
          bottom: 65,
          child: Column(children: <Widget>[
            Text(menuItem.name,
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                )),
            Text('\Kz${menuItem.price}',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                )),
          ]),
        ),
//==============================================================================
        Positioned(
          bottom: 10.0,
          right: 10.0,
          child: Container(
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(30.0)),
            child: IconButton(
              icon: Icon(Icons.add_shopping_cart),
              iconSize: 30.0,
              color: Colors.white,
              onPressed: () {},
            ),
          ),
        )
      ]),
    );
  }

//==============================================================================
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Hero(
                tag: widget.restaurant.imageUrl,
                child: Image(
                  height: 220.0,
                  width: MediaQuery.of(context).size.width,
                  image: AssetImage(widget.restaurant.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      color: Colors.white,
                      iconSize: 30.0,
                      onPressed: () => Navigator.pop(context),
                    ),
                    IconButton(
                      icon: Icon(Icons.favorite_border),
                      color: _iconColor,
                      iconSize: 30.0,
                      onPressed: () {
                        setState(() {
                          _iconColor = Colors.red;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
//==============================================================================
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      widget.restaurant.name,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(height: 6.0),
                Ratting(widget.restaurant.rating),
                Text(
                  widget.restaurant.address,
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                )
              ],
            ),
          ),
//==============================================================================
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FlatButton(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                color: Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14.0)),
                child: Text(
                  'Visualizar',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                onPressed: () {},
              ),
              FlatButton(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                color: Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14.0)),
                child: Text(
                  'Contacto',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                onPressed: () {},
              ),
            ],
          ),
//==============================================================================
          SizedBox(height: 10.0),
          Center(
            child: Text(
              'Menu',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.2,
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.all(10.0),
              crossAxisCount: 2,
              children: List.generate(widget.restaurant.menu.length, (index) {
                Food comida = widget.restaurant.menu[index];
                return _buildMenuItem(comida);
              }),
            ),
          )
        ],
      ),
    );
  }
}
