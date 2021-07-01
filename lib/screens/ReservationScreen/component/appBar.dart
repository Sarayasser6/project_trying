import 'package:flutter/material.dart';

Widget appBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.teal,
    title: Text("Place"),
    elevation: 0,
    leading: IconButton(onPressed: () {
      Navigator.pop(context);
    }, icon: Icon(Icons.arrow_back)),
  );
}