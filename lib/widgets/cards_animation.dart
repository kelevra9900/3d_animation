import 'package:cards_animation/home.dart';
import 'package:flutter/material.dart';

class Main3DCardsAnimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.light(),
      child: const CardsHome(),
    );
  }
}
