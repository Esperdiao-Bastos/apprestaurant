import 'package:apprestaurant/components/rounded_button.dart';
import 'package:apprestaurant/screens/LoginScreen.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class CriaConta extends StatefulWidget {
  @override
  _CriaContaState createState() => _CriaContaState();
}

class _CriaContaState extends State<CriaConta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[40],
      appBar: AppBar(
        title: Text('Criar Conta'),
      ),
      body: Container(
          padding: EdgeInsets.only(left: 40, right: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                keyboardType: TextInputType.text,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  //Acao fica aqui
                },
                decoration: kTextFieldDecoration.copyWith(
                  hintText: 'Nome Proprio',
                ),
              ),
              SizedBox(height: 8.0),
              TextField(
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  //Acao fica aqui
                },
                decoration: kTextFieldDecoration.copyWith(
                  hintText: 'E-mail',
                ),
              ),
              SizedBox(height: 8.0),
              TextField(
                obscureText: true,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  //Acao
                },
                decoration:
                    kTextFieldDecoration.copyWith(hintText: 'Palavra-passe'),
              ),
              SizedBox(height: 24.0),
              RoundedButton(
                title: 'Registar',
                colour: Theme.of(context).primaryColor,
                onPressed: () {},
              ),
              GestureDetector(
                  onTap: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (_) => LoginScreen()),
                      ),
                  child: Text(
                    'Já tem conta? Entrar',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ))
            ],
          )),
    );
  }
}
