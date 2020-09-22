import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;

///create drop down menu
///detect current os
class CreateDropDownMenu extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return MyDropDownMenu();
  }

}

class MyDropDownMenu extends State<CreateDropDownMenu>{

  var languagesList = ["Select one", "JAVA", "C#", "C++", "Dart"];
  var selectedLanguage = "Select one";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          DropdownButton<String>(
            items: languagesList.map((String item) {
              return DropdownMenuItem<String>(
                value: item,
                child: Text(item),
              );
            }).toList(),
            onChanged: (String selectedItem){
              setState(() {
                selectedLanguage = selectedItem;
              });
            },
            value: selectedLanguage,
          ),
          if (selectedLanguage != "Select one")
            Text("you select $selectedLanguage language"),
          if (selectedLanguage == "Select one")
            Text("Please select language to continue"),
          if (Platform.isAndroid)
            Text("this is android"),
          if (Platform.isIOS)
            Text("this is ios")
        ],
      ),
    );
  }

}