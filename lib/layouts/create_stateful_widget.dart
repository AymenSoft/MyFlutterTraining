import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///create StatefulWidget
///create decorated text field
class CreateStatefulWidget extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return StudentName();
  }

}

class StudentName extends State<CreateStatefulWidget>{

  String studentName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xFFF2F2F2),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                borderSide: BorderSide(width: 1, color: Colors.red),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                borderSide: BorderSide(width: 1, color: Colors.orange),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                borderSide: BorderSide(width: 1, color: Colors.green),
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  borderSide: BorderSide(
                    width: 1,
                  )),
              errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  borderSide: BorderSide(width: 1, color: Colors.black)),
              focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  borderSide: BorderSide(width: 1, color: Colors.yellowAccent)),
              hintText: "HintText",
              hintStyle: TextStyle(fontSize: 16, color: Color(0xFFB3B1B1)),
            ),
            onChanged: (String name) {
              setState(() {
                studentName = name;
                debugPrint(studentName);
              });
            },
          ),
          Spacer(),
          TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xFFF2F2F2),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                borderSide: BorderSide(width: 1, color: Colors.red),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                borderSide: BorderSide(width: 1, color: Colors.orange),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                borderSide: BorderSide(width: 1, color: Colors.green),
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  borderSide: BorderSide(
                    width: 1,
                  )),
              errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  borderSide: BorderSide(width: 1, color: Colors.black)),
              focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  borderSide: BorderSide(width: 1, color: Colors.yellowAccent)),
              hintText: "HintText",
              hintStyle: TextStyle(fontSize: 16, color: Color(0xFFB3B1B1)),
            ),
            onChanged: (String name) {
              setState(() {
                studentName = name;
                debugPrint(studentName);
              });
            },
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text("student name is: $studentName"),
          )
        ],
      ),
    );
  }
}