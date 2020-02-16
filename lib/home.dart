import 'package:flutter/material.dart';
import 'package:neumophism/buttons.dart';
import 'package:neumophism/constants.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: background,
        body: Center(child: 
        CustomButton(icon: Icon(Icons.ac_unit),)),
      ),
    );
  }
}
