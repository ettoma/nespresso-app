import 'package:flutter/material.dart';
import 'package:nespresso_shop/widgets/capsules.dart';
import 'package:nespresso_shop/widgets/makers.dart';
import 'package:nespresso_shop/widgets/toolBar.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolBar(),
      body: Container(
        color: Theme.of(context).primaryColor,
        child: Container(
          padding: EdgeInsets.all(24),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Makers(),
              SizedBox(
                height: 20,
              ),
              Expanded(child: Capsules()),
            ],
          ),
        ),
      ),
    );
  }
}
