import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// column: orientation vertical
/// row: orientation horizontal
class AndroidImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Image imgHead = Image.asset("images/head.png", height: 125);
    Image imgBody = Image.asset("images/body.png", height: 187);
    Image imgArm = Image.asset("images/arm.png", height: 130);
    Image imgLeg = Image.asset("images/leg.png", height: 120);
    return Container(
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 10),
              child: imgHead,
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: imgArm,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10, bottom: 5),
                  child: imgBody,
                ),
                Container(
                  child: imgArm,
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 12),
                  child: imgLeg,
                ),
                Container(
                  margin: EdgeInsets.only(left: 12),
                  child: imgLeg,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

}