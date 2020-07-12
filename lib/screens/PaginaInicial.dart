import 'package:apprestaurant/data/data.dart';
import 'package:apprestaurant/screens/CriaConta.dart';
import 'package:apprestaurant/widgets/CestasRecente.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_scaffold/responsive_scaffold.dart';
import 'package:apprestaurant/screens/CarrinhoScreen.dart';

class PaginaInicial extends StatefulWidget {
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
            ListTile(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => CriaConta()),
              ),
              leading: Icon(FontAwesomeIcons.sign),
              title: Text('Criar Conta'),
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
              title: Text('InfoAplicacao'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Configuracoes'),
            )
          ],
        ),
        trailing: IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        ),
        body: SingleChildScrollView(
          child: CestasRecente(),
        ));
  }
}
