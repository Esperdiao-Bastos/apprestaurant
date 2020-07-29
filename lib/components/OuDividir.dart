import 'package:flutter/material.dart';

class OuDividir extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
      width: size.width * 0.8,
      child: Row(
        children: <Widget>[
          buildDividir(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'OU',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
            ),
          ),
          buildDividir()
        ],
      ),
    );
  }

  Expanded buildDividir() {
    return Expanded(
      child: Divider(
        color: Color(0xFFD9D9D9),
        height: 1.4,
      ),
    );
  }
}
