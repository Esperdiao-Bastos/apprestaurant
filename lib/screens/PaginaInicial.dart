import 'package:apprestaurant/data/data.dart';
import 'package:apprestaurant/widgets/PedidosRecente.dart';
import 'package:flutter/material.dart';
import 'package:responsive_scaffold/responsive_scaffold.dart';
import 'package:apprestaurant/screens/CarrinhoScreen.dart';

class PaginaInicial extends StatefulWidget {
  static const String id = 'PaginaInicial';
  @override
  _PaginaInicialState createState() => _PaginaInicialState();
}

class _PaginaInicialState extends State<PaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveScaffold(
        title: Text('Restaurante'),
        drawer: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image(
                  height: 200,
                  width: double.infinity,
                  image: AssetImage(currentUser.backgroundImageUrl),
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 20.0,
                  left: 20.0,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 3.0, color: Colors.blueAccent)),
                        child: ClipOval(
                          child: Image(
                            image: AssetImage(currentUser.profilePicture),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 4.0),
                      Text(
                        currentUser.name,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.2),
                      )
                    ],
                  ),
                )
              ],
            ),
            ListTile(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => CarrinhoScreen()),
              ),
              leading: Icon(Icons.shopping_cart),
              title: Text(
                'Carrinho(${currentUser.cart.length})',
              ),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('Info'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Configuracoes'),
            ),
            ListTile(
              leading: Icon(Icons.directions_run),
              title: Text('Sair'),
            ),
          ],
        ),
        trailing: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.search, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => CarrinhoScreen()),
                );
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: PedidosRecente(),
        ));
  }
}
