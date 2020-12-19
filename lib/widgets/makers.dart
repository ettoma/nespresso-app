import 'package:flutter/material.dart';

import 'makerCard.dart';

class Makers extends StatelessWidget {
  final makers = const [
    {'name': 'Lattissima', 'image': 'assets/lattissima.png', 'price': '350'},
    {'name': 'Vertuo', 'image': 'assets/vertuo.png', 'price': '475'},
    {'name': 'Creatista', 'image': 'assets/creatista.png', 'price': '225'},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.baseline,
        children: [
          Text(
            'Makers',
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
            '23',
            style: TextStyle(
              color: Colors.orangeAccent.shade100,
              fontSize: 24,
            ),
          )
        ],
      ),
      SizedBox(
        height: 20,
      ),
      Container(
          height: 275,
          child: ListView.builder(
            itemCount: makers.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return MakerCard(makers[index]['image'], makers[index]['name'],
                  makers[index]['price']);
            },
          ))
    ]);
  }
}
