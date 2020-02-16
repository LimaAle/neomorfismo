import 'package:flutter/material.dart';
import 'package:neumophism/constants.dart';

class CustomButton extends StatelessWidget {
  double radius;
  final Widget icon;
  CustomButton({Key key, this.radius, @required this.icon}) : super(key: key) {
    if (radius == null || radius <= 0) radius = 32;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
        width: radius * 2,
        height: radius * 2,
        decoration: BoxDecoration(
            color: background,
            borderRadius: BorderRadius.circular(radius),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, offset: Offset(4, 4), blurRadius: 2),
              BoxShadow(
                  color: Colors.white, offset: Offset(-4, -4), blurRadius: 2),
            ]),
      ),
      Positioned.fill(child: icon),
    ]);
  }
}
