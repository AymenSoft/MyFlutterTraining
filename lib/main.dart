import 'package:first_flutter_app/layouts/create_floating_button.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My First Flutter App",
      home: Scaffold(
        appBar: AppBar(
            title: Text("My Title"),
        ),
        body:  Center(
          child: CreateFloatingButton(),
        )
      ),
    );
  }



}

