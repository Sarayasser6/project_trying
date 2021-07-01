import 'package:flutter/material.dart';
import '../Academy/Academy.dart';
import '../PageDrawer/PageDrawer.dart';
import '../PlayGrounds/PlayGrounds.dart';
import '../homePage/homePage.dart';
class League extends StatefulWidget {

  String title;

  League(this.title);
  @override
  _leagueState createState() => _leagueState();
}

class _leagueState extends State<League> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: PageDrawer(),
      appBar: AppBar(
        title: Text("League"),
        backgroundColor: Colors.green,
        actions: <Widget>[
          IconButton(icon:Icon(Icons.add_circle), onPressed: (){},)
        ],
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          MediaQuery.of(context).viewInsets.bottom==0?Container(color:Colors.white,height:70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                InkWell(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context){return HomePage("");}));
                  },
                  child: Column(children: <Widget>[
                    Image.asset("images/home-icon2.png",fit: BoxFit.contain,width: 40,),
                    Text("Home",style: TextStyle(fontSize: 17),)
                  ],),)
                ,
                InkWell(
                  splashColor: Colors.green,
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context){return PlayGrounds("");}));
                  },
                  child:  Column(children: <Widget>[
                    Image.asset("images/reservation-icon-18.jpg",fit: BoxFit.contain,width: 40,),
                    Text("Reservation",style: TextStyle(fontSize: 17,),)
                  ],),)
                ,
                InkWell(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context){return Academy("");}));
                  },
                  child: Column(children: <Widget>[
                    Image.asset("images/academy-icon6.png",fit: BoxFit.contain,width: 40,),
                    Text("Academy",style: TextStyle(fontSize: 17),)
                  ],),)
                ,
                InkWell(
                  splashColor: Colors.green,
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context){return League("");}));
                  },
                  child:  Column(children: <Widget>[
                    Image.asset("images/world-cup.png",fit: BoxFit.contain,width: 40,),
                    Text("League",style: TextStyle(fontSize: 17,color: Colors.red),)
                  ],),)
              ],
            ),):Container()//NavigationBar
        ],
      ) ,
    );
  }


}
