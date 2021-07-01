import 'package:flutter/material.dart';

Widget buildCard(String PlaceName, String path, String location, String price,
    String NoOfFields) {
  return Stack(
    alignment: Alignment.center,
    children: <Widget>[
      Image(
        image: AssetImage(path),
        height: 170,
        width: 440,
        fit: BoxFit.cover,
      ),
      Positioned(
        top: 16,
        right: 16,
        left: 16,
        child: Text(
          PlaceName,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 22,
          ),
        ),
      ),
      SizedBox(
        height: 18,
      ),
      Positioned(
        top: 45,
        right: 16,
        left: 16,
        child: Text(
          location,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
      Positioned(
        top: 70,
        right: 16,
        child: Row(
          children: [
            Positioned(
              top: 70,
              right: 16,
              child: Text(
                price,
                style: TextStyle(
                  backgroundColor: Colors.greenAccent,
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
            Positioned(
              bottom: 16,
              right: 18,
              child: Text(
                "EGP",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
      Positioned(
        bottom: 16,
        left: 16,
        child: Row(
          children: [
            Positioned(
              bottom: 16,
              left: 16,
              child: Text(
                NoOfFields,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Positioned(
              bottom: 16,
              left: 18,
              child: Text(
                'Fields',
                style: TextStyle(
                  textBaseline: TextBaseline.ideographic,
                  color: Colors.white,
                  fontSize: 19,
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
