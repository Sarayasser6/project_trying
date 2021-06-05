import 'package:flutter/material.dart';
import 'Academy.dart';
import 'League.dart';
import 'PlayGrounds.dart';
import 'homePage.dart';


class BottomNavigationbar extends StatefulWidget {
  int pageIndex;

  BottomNavigationbar(this.pageIndex);

  @override
  _BottomNavigationbarState createState() => _BottomNavigationbarState(pageIndex);
}

class _BottomNavigationbarState extends State<BottomNavigationbar> {
int pageIndex;

_BottomNavigationbarState(this.pageIndex);

  int _currentIndex = 0;

  List<Widget> _children = [
    HomePage ("Home page"),
    PlayGrounds("PLAYGROUNDS"),
    Academy("ACademy"),
    League("LEAGUE")

  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:_children[pageIndex ] ,
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Color(0xffface16),
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(

              icon:Image.asset("images/Home-icon.png",fit: BoxFit.contain,width: 40,),
              title: Text("HOME"),
              backgroundColor:Colors.white,
            ),


            BottomNavigationBarItem(
                icon:Image.asset("images/reservation-icon-18.jpg",fit: BoxFit.contain,width: 40,),
                title: Text("RESERVATION"),
                backgroundColor:Colors.white //Color(0xff171717),
            ),


            BottomNavigationBarItem(
              icon: Image.asset("images/academy-icon-5.jpg",fit: BoxFit.contain,width: 40,),
              title: Text("ACADEMY"),
              backgroundColor: Colors.white,
            ),


            BottomNavigationBarItem(
              icon:Image.asset("images/world-cup1.png",fit: BoxFit.contain,width: 40,),
              title: Text("LEAGUE"),
              backgroundColor: Colors.white,
            ),
          ],

          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
    );

  }
}
