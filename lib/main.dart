import 'package:apprestaurant/screens/CarrinhoScreen.dart';
import 'package:apprestaurant/screens/Login/CriaConta.dart';
import 'package:apprestaurant/screens/Login/LoginScreen.dart';
import 'package:apprestaurant/screens/PaginaInicial.dart';
import 'package:apprestaurant/screens/RestaurantScreen.dart';
import 'package:apprestaurant/screens/TelaEntrada/WelcomeScreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurant',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[40],
        primaryColor: Colors.redAccent,
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        CriaConta.id: (context) => CriaConta(),
        PaginaInicial.id: (context) => PaginaInicial(),
        RestaurantScreen.id: (context) => RestaurantScreen(),
        CarrinhoScreen.id: (context) => CarrinhoScreen()
      },
    );
  }
}
