import 'package:flutter/material.dart';

class SocialIcon extends StatelessWidget {
  final String iconSocial;
  final Function press;
  const SocialIcon({
    Key key,
    this.iconSocial,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            border: Border.all(width: 2, color: Theme.of(context).primaryColor),
            shape: BoxShape.circle),
        child: Image.asset(
          iconSocial,
          height: 20,
          width: 20,
        ),
      ),
    );
  }
}
