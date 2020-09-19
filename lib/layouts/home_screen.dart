import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{

  Image imgHead, imgBody, imgArm, imgLeg;

  @override
  Widget build(BuildContext context) {
    imgHead = Image.asset("images/head.png");
    imgBody = Image.asset("images/body.png");
    imgArm = Image.asset("images/arm.png");
    imgLeg = Image.asset("images/leg.png");
    return Container(
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 10),
              height: 125,
              child: imgHead,
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 170,
                  child: imgArm,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10, bottom: 5),
                  height: 190,
                  child: imgBody,
                ),
                Container(
                  height: 170,
                  child: imgArm,
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
            ),
          )
        ],
      )
    );
  }
}