import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nespresso_shop/widgets/makerCard.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leadingWidth: 75,
        toolbarHeight: 70,
        elevation: 0,
        leading: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Color.fromRGBO(30, 30, 35, 1),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[700].withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 2,
                offset: Offset(-4, -3), // changes position of shadow
              ),
              BoxShadow(
                color: Colors.grey[700].withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 2,
                offset: Offset(4, 3), // changes position of shadow
              ),
            ],
          ),
          margin: EdgeInsets.all(12),
          // padding: EdgeInsets.all(12),
          child: Center(
            child: FaIcon(
              FontAwesomeIcons.expand,
              color: Colors.orangeAccent.shade200,
            ),
          ),
        ),
        title: Image.asset(
          'assets/logo1.png',
          color: Colors.white,
          width: 50,
          height: 50,
        ),
      ),
      body: Container(
        color: Theme.of(context).primaryColor,
        child: Container(
          padding: EdgeInsets.all(24),
          child: Column(
            children: [
              SizedBox(
                height: 16,
              ),
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
                      color: Colors.orangeAccent.shade200,
                      fontSize: 24,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  MakerCard('Image', 'Lattissima', '350'),
                  MakerCard('Image', 'Lattissima', '350'),
                ],
              ),
              SizedBox(
                height: 36,
              ),
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
                      color: Colors.orangeAccent.shade200,
                      fontSize: 24,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
