import 'package:flutter/material.dart';

class CapsuleCard extends StatelessWidget {
  final String capsuleName;
  final String capsulePrice;
  final String capsuleImage;

  CapsuleCard(this.capsuleImage, this.capsuleName, this.capsulePrice);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: AssetImage(capsuleImage),
            alignment: Alignment.center,
            width: 100,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            capsuleName,
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
            '\$$capsulePrice \/10pc',
            style: TextStyle(color: Colors.grey, letterSpacing: 1),
          ),
        ],
      ),
    );
  }
}
