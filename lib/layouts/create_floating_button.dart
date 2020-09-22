import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

///create floating button
class CreateFloatingButton extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listView(context),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        tooltip: "ToolTips",
        onPressed: (){
          Scaffold.of(context).showSnackBar(SnackBar(
            content: Text("Item Deleted"),
            action: SnackBarAction(
              label: "UNDO",
              onPressed: (){
                Scaffold.of(context).hideCurrentSnackBar();
              },
            ),
          ));
        },
      ),
    );
  }

  Widget listView(BuildContext context) {
    var items = generateData();
    var list = ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: items.length,
      itemBuilder: (context, position){
        return ListTile(
          leading: Icon(
              Icons.accessibility_new,
              color: Colors.blueAccent,
              size: 40
          ),
          title: Text(items[position]),
          subtitle: Text("this is ${items[position]}"),
          trailing: Icon(Icons.add_circle, color: Colors.blueAccent),
          onTap: (){
            //use toast
            Fluttertoast.showToast(
                msg: "this is ${items[position]}",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.blueAccent,
                textColor: Colors.white,
                fontSize: 16.0
            );
          },
        );
      },
    );
    return list;
  }

  //generate dynamic data to show it in list view
  List<String> generateData(){
    var items = List<String>.generate(50, (index) => "student ${index + 1}");
    return items;
  }

}