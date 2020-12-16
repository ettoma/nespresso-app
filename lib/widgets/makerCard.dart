import 'package:flutter/material.dart';

class MakerCard extends StatelessWidget {
  final String makerName;
  final String makerPrice;
  final String makerImage;

  MakerCard(this.makerImage, this.makerName, this.makerPrice);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(right: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          width: 150,
          height: 200,
          child: Text(makerImage),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          makerName,
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.5,
              fontSize: 14),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          '\$$makerPrice',
          style: TextStyle(color: Colors.grey, letterSpacing: 1),
        ),
      ],
    );
  }
}
