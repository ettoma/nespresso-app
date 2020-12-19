import 'package:flutter/material.dart';

import 'capsuleCard.dart';

class Capsules extends StatelessWidget {
  final capsules = const [
    {'name': 'Espresso', 'image': 'assets/1.png', 'price': '12'},
    {'name': 'Vertuo', 'image': 'assets/2.png', 'price': '11'},
    {'name': 'Volluto', 'image': 'assets/3.png', 'price': '9'},
    {'name': 'Decaffeinato', 'image': 'assets/4.png', 'price': '10'},
    {'name': 'Choco', 'image': 'assets/5.png', 'price': '12'},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.baseline,
        children: [
          Text(
            'Capsules',
            style: TextStyle(
                color: Colors.white,
                fontSize: 36,
                fontWeight: FontWeight.bold,
                letterSpacing: 2),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            '15',
            style: TextStyle(
              color: Colors.orangeAccent.shade100,
              fontSize: 24,
            ),
          )
        ],
      ),
      SizedBox(
          // height: 20,
          ),
      Expanded(
          child: ListView.builder(
        itemCount: capsules.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return CapsuleCard(capsules[index]['image'], capsules[index]['name'],
              capsules[index]['price']);
        },
      ))
    ]);
  }
}
