import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import'package:flutter/src/painting/image_provider.dart';
import'package:flutter/src/painting/image_cache.dart';
import'package:flutter/src/services/asset_bundle.dart';

import 'Academy.dart';
import 'BottomNB.dart';
import 'League.dart';
import 'PageDrawer.dart';
import 'PlayGrounds.dart';

class HomePage extends StatefulWidget {
  String title;

  HomePage(this.title);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomePage() ;
  }
}


class _HomePage extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("HOME PAGE",style: TextStyle(color: Colors.white),),
      ),

      drawer:PageDrawer(),

      body: Container(
        child: Column(
          children: <Widget>[
            //buildCard(),
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  width: 390,
                  height:160 ,
                  child: Image(
                    image: AssetImage("images/kora.jpg"
                    ),

                    height: 220,
                    width: 370,
                    fit: BoxFit.cover,

                  ),
                ),

                /* Positioned(
                    top: 30,
                    //right: 16,
                    left: 16,
                    child: IconButton(
                      onPressed:(){

                      },icon: Icon(Icons.menu,color: Colors.black,size: 30,),)
                ),*/


              ],

            )
            ,

            SizedBox(height: 25,),

            Padding(
              padding: EdgeInsets.only(left: 10,right: 10),
              child:InkWell(onTap:(){
                Navigator.push(context,MaterialPageRoute(builder: (context){return PlayGrounds("");}));
              },child: SmallbuildCard("Reservation","images/reservation-icon-18.jpg","images/ball&ground.jpg")) ,
            ),

            SizedBox(height: 20,),

            Padding(
              padding: EdgeInsets.only(left: 10,right: 10),
              child:InkWell(onTap:(){
                Navigator.push(context,MaterialPageRoute(builder: (context){return Academy ("");}));
              },child: SmallbuildCard("Academy","images/academy-icon-5.jpg","images/academy3.jpg")) ,
            ),

            SizedBox(height: 20,),

            Padding(
              padding: EdgeInsets.only(left: 10,right: 10),
              child:InkWell(onTap:(){
                Navigator.push(context,MaterialPageRoute(builder: (context){return League("");}));
              }, child: SmallbuildCard("League","images/world-cup.png","images/cardimage.jpg")) ,
            ),

          ],
        ),
      ),


    )
    ;


  }

}




Widget SmallbuildCard(String name,String path,String MainImagePath){
  return Container(
    decoration: BoxDecoration(
        color:Colors.green,
        border: Border.all(
          color: Colors.green[500],
        ),
        borderRadius: BorderRadius.all(Radius.circular(20))
    ),
    child: Row(
      mainAxisAlignment:MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Image(
              image: AssetImage(  MainImagePath
              ),

              height: 120,
              width: 250,
              fit: BoxFit.cover,

            ),

            Positioned(
                top: 30,
                right: 25,
                left: 25,
                child: Text(name,style: TextStyle(fontSize: 30,color: Colors.white),)
            )

          ],
        ),

        Container(
            decoration: BoxDecoration(
              color:Colors.green,
                border: Border.all(
                  color: Colors.green[500],
                ),
                borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            child: Image(
              image: AssetImage(path
              ),
              height: 120,
              width: 90,
            )
        )

        ,
       /* Container(
          color: Colors.green,
          height: 120,
          width: 100,
          child: Image(
            image: AssetImage(path
            ),
            height: 120,
            width: 90,
          ) ,
        )*/
      ],
    ),
  )
  ;

}



