import 'package:flutter/material.dart';
import 'package:project_trying/screens/FirstPage/FirstPage.dart';
import 'package:project_trying/screens/PlayGrounds/PlayGrounds.dart';
import 'package:project_trying/screens/ReservationScreen/ReservationScreen.dart';
import 'package:project_trying/screens/homePage/homePage.dart';


void main() => runApp(MyApp());

// شكلي اخرتك
// اضور علي ابرنامج وبعتهولي ولو وقفت معاي حاجة ابعتيلي
//


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: HomePage (""),
    );
  }
}


