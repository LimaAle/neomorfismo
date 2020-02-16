import 'package:flutter/material.dart';
import 'package:neumophism/buttons.dart';
import 'package:neumophism/constants.dart';

import 'buttons.dart';
import 'constants.dart';
import 'constants.dart';
import 'constants.dart';
import 'constants.dart';
import 'constants.dart';
import 'constants.dart';
import 'constants.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CustomButton(
                  icon: Icon(Icons.arrow_back),
                ),
                Text('text'),
                CustomButton(
                  icon: Icon(Icons.more_vert),
                ),
              ],
            ),
            Stack(children: [
              Container(
                width: MediaQuery.of(context).size.width - 50,
                height: MediaQuery.of(context).size.width - 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.width),
                    gradient: LinearGradient(
                        colors: [shadowColor, lightShadowColor],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight),
                    boxShadow: [
                      BoxShadow(
                          color: shadowColor,
                          offset: Offset(8, 6),
                          blurRadius: 12),
                      BoxShadow(
                          color: lightShadowColor,
                          offset: Offset(-8, -6),
                          blurRadius: 12),
                    ]),
              ),
              Positioned(
                  top: 10,
                  left: 10,
                  bottom: 10,
                  right: 10,
                  child: Image.network(
                      'http://www.pokestadium.com/assets/img/sprites/official-art/mew.png'))
            ]),
            SizedBox(
              height: 30,
            ),
            Text(
              'music name',
              style: TextStyle(fontSize: 28, color: textColor),
            ),
            Text('album',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: textColor)),
            SizedBox(height: 20,),
            Stack(children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal:32),
                width: double.infinity,
                height: 24,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: background,
                    boxShadow: [
                      BoxShadow(
                        color: lightShadowColor,
                        offset: Offset(1, 4),
                      ),
                      BoxShadow(
                        color: shadowColor,
                        offset: Offset(-1, -4),
                      ),
                    ]),
              ),
              Positioned(
                top: 1,
                bottom: 2,
                child: Container(
                    margin: EdgeInsets.symmetric(horizontal:32),
                    width: 200,
                    height: 24,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: LinearGradient(
                            colors: [seekBarLight, seekBarDark],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter))),
              ),            
            ]),
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal:32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                Text('1:00'),
                Text('2:00')
            ],),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CustomButton(icon: Icon(Icons.skip_previous)),
                CustomButton(icon: Icon(Icons.play_arrow),radius: 40,),
                CustomButton(icon: Icon(Icons.skip_next))
              ],
            )
          ],
        ),
      ),
    );
  }
}
