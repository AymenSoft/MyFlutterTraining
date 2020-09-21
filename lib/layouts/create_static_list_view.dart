import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

///create static list view
///use debug log
///use toast
///use snake bar
class CreateStaticListView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return listView(context);
  }

  Widget listView(BuildContext context){
    var list = ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(
              Icons.ac_unit,
              color: Colors.blueAccent,
              size: 40
          ),
          title: Text("Temperature"),
          subtitle: Text("get current temperature"),
          trailing: Icon(Icons.add_location),
          hoverColor: Colors.blueAccent,
          onTap: (){
            //use log
            debugPrint("hello world");
          },
        ),
        ListTile(
          leading: Icon(
              Icons.ac_unit,
              color: Colors.blueAccent,
              size: 40
          ),
          title: Text("Temperature"),
          subtitle: Text("get current temperature"),
          trailing: Icon(Icons.add_location),
          hoverColor: Colors.blueAccent,
          onTap: (){
            //use toast
            Fluttertoast.showToast(
                msg: "This is Center Short Toast",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.blueAccent,
                textColor: Colors.white,
                fontSize: 16.0
            );
          },
        ),
        ListTile(
          leading: Icon(
              Icons.ac_unit,
              color: Colors.blueAccent,
              size: 40
          ),
          title: Text("Temperature"),
          subtitle: Text("get current temperature"),
          trailing: Icon(Icons.add_location),
          hoverColor: Colors.blueAccent,
          onTap: (){
            //use snake bare
            Scaffold.of(context).showSnackBar(SnackBar(
              content: Text("Sending Message"),
              action: SnackBarAction(
                label: "DONE",
                onPressed: (){
                  Scaffold.of(context).hideCurrentSnackBar();
                },
              ),
            ));
          },
        )
      ],
    );

    return list;
  }

}