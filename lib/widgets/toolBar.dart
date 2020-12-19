import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ToolBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(70);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leadingWidth: 75,
      toolbarHeight: 100,
      elevation: 0,
      leading: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color.fromRGBO(31, 31, 37, 1),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.05),
              spreadRadius: 1,
              blurRadius: 2,
              offset: Offset(-4, -3), // changes position of shadow
            ),
            BoxShadow(
              color: Colors.grey.withOpacity(0.02),
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
            color: Colors.orangeAccent.shade100,
          ),
        ),
      ),
      title: Image.asset(
        'assets/logo1.png',
        color: Colors.white,
        width: 50,
        height: 50,
      ),
    );
  }
}
