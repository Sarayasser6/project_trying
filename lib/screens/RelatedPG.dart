import 'package:flutter/material.dart';

class RelatedPG extends StatefulWidget {
  String title;


  RelatedPG(this.title);

  @override
  _RelatedPGState createState() => _RelatedPGState(title);
}

class _RelatedPGState extends State<RelatedPG> {
  String title;

  _RelatedPGState(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title.toString()),
        backgroundColor: Colors.green,

      ),
    );
  }
}
