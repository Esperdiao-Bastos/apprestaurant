import 'package:apprestaurant/data/data.dart';
import 'package:apprestaurant/models/order.dart';
import 'package:flutter/material.dart';

class CarrinhoScreen extends StatefulWidget {
  static const String id = 'CarrinhoScreen';
  @override
  _CarrinhoScreenState createState() => _CarrinhoScreenState();
}

class _CarrinhoScreenState extends State<CarrinhoScreen> {
  _builderCarrinho(Order order) {
    return Container(
      padding: EdgeInsets.all(20.0),
      height: 170.0,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Container(
                  width: 150,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(order.food.imageUrl),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(15.0)),
                ),
//==============================================================================
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          order.food.name,
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          order.restaurant.name,
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.w600),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Flexible(
                          child: Row(
                            children: <Widget>[
                              buildOutlineButtom(
                                  icon: Icons.remove,
                                  press: () {
                                    if (order.quantity > 1) {
                                      setState(() {
                                        order.quantity--;
                                      });
                                    }
                                  }),
                              Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: 4 / 2),
                                child: Text(
                                  order.quantity.toString().padLeft(2, "0"),
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                              ),
                              buildOutlineButtom(
                                  icon: Icons.add,
                                  press: () {
                                    setState(() {
                                      order.quantity++;
                                    });
                                  }),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 14),
            child: Text(
              '\Kz${order.food.price}',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }

//Metodo para selecionar a quantidade===========================================
  SizedBox buildOutlineButtom({IconData icon, Function press}) {
    return SizedBox(
      width: 40.0,
      height: 32.0,
      child: OutlineButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(icon),
        onPressed: press,
      ),
    );
  }

//==============================================================================
  @override
  Widget build(BuildContext context) {
    double precoTotal = 0;
    currentUser.cart.forEach(
        (Order order) => precoTotal += order.quantity * order.food.price);
    return Scaffold(
      appBar: AppBar(
        title: Text('Carrinho'),
      ),
      body: ListView.separated(
        itemCount: currentUser.cart.length + 1,
        itemBuilder: (BuildContext context, int index) {
          if (index < currentUser.cart.length) {
            Order order = currentUser.cart[index];
            return _builderCarrinho(order);
          }
          return Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Tempo',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      '25minu',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Custo Total',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      '\Kz${precoTotal.toStringAsFixed(2)}',
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.green[700]),
                    ),
                  ],
                ),
                SizedBox(height: 80.0)
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            height: 1.0,
            color: Colors.grey,
          );
        },
      ),
      bottomSheet: Container(
        height: 100.0,
        width: MediaQuery.of(context).size.width,
        decoration:
            BoxDecoration(color: Theme.of(context).primaryColor, boxShadow: [
          BoxShadow(
              color: Colors.black26, offset: Offset(0, -1), blurRadius: 6.0),
        ]),
        child: Center(
          child: FlatButton(
            child: Text(
              'Finalizar Compra',
              style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Fim da encomenda'),
                    content: Text('Realizada com sucesso'),
                    actions: <Widget>[
                      RaisedButton(
                        color: Colors.green,
                        child: Text('Sim'),
                        onPressed: () {},
                      ),
                      RaisedButton(
                        color: Colors.red,
                        onPressed: () {},
                        child: Text('Nao'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
