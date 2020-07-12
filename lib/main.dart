import 'package:apprestaurant/screens/PaginaInicial.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppFood',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[40],
        primaryColor: Colors.deepPurpleAccent,
      ),
      home: PaginaInicial(),
    );
  }
}
