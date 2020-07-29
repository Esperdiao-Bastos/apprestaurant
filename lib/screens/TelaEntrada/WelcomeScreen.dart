import 'package:apprestaurant/components/rounded_button.dart';
import 'package:apprestaurant/screens/Login/CriaConta.dart';
import 'package:apprestaurant/screens/Login/LoginScreen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'WelcomeScreen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('assets/images/logo.jpg'),
                    height: 60,
                  ),
                ),
                Text(
                  'Restaurante',
                  style: TextStyle(fontSize: 44.0, fontWeight: FontWeight.w900),
                )
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundedButton(
              title: 'Login',
              colour: Colors.redAccent,
              onPressed: () {
                Navigator.pushReplacementNamed(context, LoginScreen.id);
              },
            ),
            RoundedButton(
              title: 'Registar',
              colour: Colors.blueAccent,
              onPressed: () {
                Navigator.pushReplacementNamed(context, CriaConta.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
