import 'package:flutter/material.dart';

const textInputDecoration = InputDecoration(
  labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),

  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(20.0)),
    borderSide: BorderSide(color: Colors.white),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0XFFec6e5a), width: 2),
  ), //It's the border setting , which will get applied if you're focussing on the box, let's the cursor is there

  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0XFFec6e5a), width: 2),
  ), //It's the border setting , which will be the default setting, it will only change if the box is selected

  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0XFFec6e5a), width: 2),
  ), //It's the border setting , which will get applied if there is an error in the box.
);

void nextScreen(context, page) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => page));
}

void nextScreenReplace(context, page) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => page));
}
