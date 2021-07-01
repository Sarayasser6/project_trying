import 'package:flutter/material.dart';

class BoxDataTime extends StatelessWidget {

  List<String> dateTome = [
    "9-10 AM",
    "9-10 AM",
    "10-11 AM",
    "11-12 AM",
    "12-1 PM",
    "1-2 PM",
    "",
    "",
  ];

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 40,
      child: ListView.builder(
        scrollDirection : Axis.horizontal,
        itemCount: dateTome.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(5.0),
            child: ElevatedButton(
                onPressed: () {},
                child: Text("1-2 PM"),
                style: ElevatedButton.styleFrom(primary: Colors.teal, onPrimary: Colors.white,)),
          );

        },),
    );
  }
}