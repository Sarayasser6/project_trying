import 'package:flutter/material.dart';
import '../Academy/Academy.dart';
import '../League/League.dart';
import '../PageDrawer/PageDrawer.dart';
import '../PlayGrounds/PlayGrounds.dart';
import '../homePage/homePage.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  List<Widget> _children = [
    HomePage ("Home page"),
    PlayGrounds("PLAYGROUNDS"),
    Academy("ACademy"),
    League("LEAGUE")

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title:Text(_children[_currentIndex].toStringShort()),
        backgroundColor: Colors.green,
        actions: <Widget>[],
      )*/
      drawer:PageDrawer(),
      body: _children[_currentIndex],
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
            icon:Image.asset("images/world-cup.png",fit: BoxFit.contain,width: 40,),
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
