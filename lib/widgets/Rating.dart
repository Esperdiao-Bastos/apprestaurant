import 'package:flutter/material.dart';

class Ratting extends StatelessWidget {
  final int rating;
  Ratting(this.rating);

  @override
  Widget build(BuildContext context) {
    String start = '';
    for (int i = 0; i < rating; i++) {
      start += '⭐';
    }
    start.trim();
    return Text(
      start,
      style: TextStyle(fontSize: 18.0),
    );
  }
}
