import 'package:apprestaurant/components/JaTemContaCheck.dart';
import 'package:apprestaurant/components/OuDividir.dart';
import 'package:apprestaurant/components/SocialIcons.dart';
import 'package:apprestaurant/components/rounded_button.dart';
import 'package:apprestaurant/screens/Login/LoginScreen.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';

class CriaConta extends StatefulWidget {
  static const String id = 'CriarConta';
  @override
  _CriaContaState createState() => _CriaContaState();
}

class _CriaContaState extends State<CriaConta> {
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
            SizedBox(
              height: 48.0,
            ),
            SizedBox(height: 24.0),
            TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              onChanged: (value) {},
              decoration: kTextFieldDecoration.copyWith(hintText: 'E-mail'),
            ),
            SizedBox(height: 24.0),
            TextField(
              obscureText: true,
              textAlign: TextAlign.center,
              onChanged: (value) {},
              decoration:
                  kTextFieldDecoration2.copyWith(hintText: 'Palavra-passe'),
            ),
            RoundedButton(
              title: 'Registar',
              colour: Colors.redAccent,
              onPressed: () {},
            ),
            JaTemContaCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return LoginScreen();
                  }),
                );
              },
            ),
            OuDividir(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialIcon(
                  iconSocial: 'assets/images/facebook_f_30px.png',
                  press: () {},
                ),
                SocialIcon(
                  iconSocial: 'assets/images/google_logo_48px.png',
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
