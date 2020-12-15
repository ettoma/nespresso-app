import 'package:flutter/material.dart';
import 'package:nespresso_shop/views/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nespresso shop',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(38, 38, 48, 1),
        backgroundColor: Color.fromRGBO(40, 40, 50, 1),
      ),
      home: Homepage(),
    );
  }
}
