import 'package:flutter/material.dart';

///create 2 types of buttons
///make buttons shapes
///add onPressed action
///create alert dialogue
///use Wrap horizontal and vertical
class CreateButton extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    //flat button
    FlatButton flatButton = FlatButton(
      onPressed: (){
        onPressed(context, "flatButton");
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: BorderSide(width: 1, color: Colors.redAccent)
      ),
      child: Text(
        "flatButton",
        style: TextStyle(
          color: Colors.redAccent
        ),
      ),
    );

    //RaisedButton
    RaisedButton raisedButton = RaisedButton(
      onPressed: (){
        onPressed(context, "raisedButton");
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(15), bottomRight: Radius.circular(15)),
        side: BorderSide(width: 1, color: Colors.redAccent),
      ),
      color: Colors.white70,
      child: Text(
        "raisedButton",
        style: TextStyle(
          color: Colors.redAccent
        ),
      ),
    );

    return Container(
      child: Wrap(
        direction: Axis.horizontal,
        spacing: 10,
        children: <Widget>[
          flatButton,
          SizedBox(width: 25),
          raisedButton
        ],
      ),
    );
  }

  //on button click
void onPressed(BuildContext context, String buttonName){
    AlertDialog alertDialog = AlertDialog(
      title: Text("My Flutter App"),
      content: Text(buttonName),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(35), bottomRight: Radius.circular(35)),
          side: BorderSide(width: 1, color: Colors.redAccent)
      ),
      actions: <Widget>[
        FlatButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          child: Text("cancel"),
        ),
        FlatButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          child: Text("ok"),
        )
      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context){
        return alertDialog;
      }
    );
}

}