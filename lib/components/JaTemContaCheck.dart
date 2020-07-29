import 'package:flutter/material.dart';

class JaTemContaCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const JaTemContaCheck({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(login ? ' Nao tem conta ?' : ' Já possui conta ?'),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? ' Criar Conta ' : ' Entrar ',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
