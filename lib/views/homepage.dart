import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leadingWidth: 75,
        toolbarHeight: 70,
        leading: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Color.fromRGBO(22, 22, 32, 1),
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
    );
  }
}
