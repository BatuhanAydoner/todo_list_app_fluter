import 'dart:ui';

import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0))),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Add Task",
                style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30.0),
                textAlign: TextAlign.center,
              ),
              TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                autofocus: true,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            width: 5.0, color: Colors.lightBlueAccent))),
                onChanged: (value) {},
              ),
              SizedBox(
                height: 10.0,
              ),
              FlatButton(
                onPressed: () {},
                child: Text(
                  "Add",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.lightBlueAccent,
              )
            ],
          ),
        ),
      ),
    );
  }
}
