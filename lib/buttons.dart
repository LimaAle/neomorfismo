import 'package:flutter/material.dart';
import 'package:neumophism/constants.dart';

import 'constants.dart';
import 'constants.dart';

class CustomButton extends StatelessWidget {
  double radius;
  final Widget icon;
  CustomButton({Key key, this.radius, @required this.icon}) : super(key: key) {
    if (radius == null || radius <= 0) radius = 32;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(radius/2),
      child: Stack(children: <Widget>[
        Container(
          width: radius * 2,
          height: radius * 2,
          decoration: BoxDecoration(
              color: background,
              borderRadius: BorderRadius.circular(radius),
              boxShadow: [
                BoxShadow(
                    color: shadowColor, offset: Offset(8, 6), blurRadius: 12),
                BoxShadow(
                    color: lightShadowColor, offset: Offset(-8, -6), blurRadius: 12),
              ]),
        ),
        Positioned.fill(child: icon),
      ]),
    );
  }
}
