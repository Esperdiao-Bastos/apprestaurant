import 'package:apprestaurant/components/JaTemContaCheck.dart';
import 'package:apprestaurant/components/rounded_button.dart';
import 'package:apprestaurant/constants.dart';
import 'package:apprestaurant/screens/Login/CriaConta.dart';
import 'package:apprestaurant/screens/PaginaInicial.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'LoginScreen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[40],
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Flexible(
                child: Hero(
              tag: 'Logo',
              child: Container(
                height: 200,
                child: Image.asset(
                  'assets/images/logo.jpg',
                  height: size.height * 0.34,
                ),
              ),
            )),
            SizedBox(height: size.height * 0.03),
            TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              onChanged: (value) {},
              decoration: kTextFieldDecoration.copyWith(hintText: 'E-mail'),
            ),
            SizedBox(height: size.height * 0.03),
            TextField(
              obscureText: true,
              textAlign: TextAlign.center,
              onChanged: (value) {},
              decoration:
                  kTextFieldDecoration2.copyWith(hintText: 'Palavra-passe'),
            ),
            RoundedButton(
              title: 'Entrar',
              colour: Colors.redAccent,
              onPressed: () {
                Navigator.pushReplacementNamed(context, PaginaInicial.id);
              },
            ),
            JaTemContaCheck(
              press: () {
                Navigator.pushReplacementNamed(context, CriaConta.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
