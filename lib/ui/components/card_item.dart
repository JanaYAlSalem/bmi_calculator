import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {

  const CardItem({required this.colour, this.cardChild, this.onCardClicked});


  final Color colour;
  final Widget? cardChild;
  final VoidCallback? onCardClicked; // VoidCallback if a Fun

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onCardClicked,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}