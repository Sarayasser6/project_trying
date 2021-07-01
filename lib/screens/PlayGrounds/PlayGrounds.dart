import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_trying/screens/League/League.dart';

import '../Academy/Academy.dart';
import '../BottomNB/BottomNB.dart';
import '../FilterScreen/FilterScreen.dart';
import '../PageDrawer/PageDrawer.dart';
import '../RelatedPG/RelatedPG.dart';
import '../ReservationScreen/ReservationScreen.dart';
import '../Sorting/Sorting.dart';
import '../homePage/homePage.dart';


class PlayGrounds extends StatefulWidget {
  String title;

  PlayGrounds(this.title);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PlayGroundsState() ;
  }
}

class _PlayGroundsState extends State<PlayGrounds> {
   Icon cusTcon= Icon(Icons.search);
   Widget cuSearchBar=Text("Fields");
   String SearchTxt;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:PageDrawer(),
      appBar: AppBar(
        elevation: 50.0,
        title: cuSearchBar,
        backgroundColor: Colors.green,
        actions: <Widget>[
          SizedBox(width: 20,),
          IconButton(
            icon:cusTcon,
            onPressed: (){
            setState(() {
                 if(this.cusTcon.icon==Icons.search){
                   this.cusTcon=Icon(Icons.cancel);
                   this.cuSearchBar=TextField(
                     onChanged: (text){
                       SearchTxt=text;
                       debugPrint(SearchTxt);
                     },
                     textInputAction: TextInputAction.go,
                     decoration: InputDecoration(
                       border: InputBorder.none,
                       hintText: "Search"
                     ),
                     style: TextStyle(
                       color: Colors.white,
                       fontSize: 16
                     ),
                   );
                 }
                 else{
                      this.cusTcon= Icon(Icons.search);
                      this.cuSearchBar=Text("Fields");
                 }
            });
          },)
        ],
      ),


      body:
      Padding( padding: EdgeInsets.only(top: 15,left: 7,right: 7,bottom: 7),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
            children:<Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(width: 15,),

                  InkWell(
                    onTap: (){
                      showDialog(context: context, builder: (context){
                        return Sorting();
                      });
                     //Navigator.push(context,MaterialPageRoute(builder: (context){return Sorting();}));
                    },
                    child: Row(children: <Widget>[
                      Icon(Icons.sort,color: Colors.indigo,size: 30,),
                      Text("Sorting",)
                    ],),)
                  ,
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return FilterSCreen();
                      }));
                    },
                    child: Container(
                      child:Row(children: <Widget>[
                        Icon(Icons.filter_list ,color: Colors.indigo,size: 30,),
                        Text("Filter",)
                      ],) ,),),

                  SizedBox(width: 15,),

                ],),

              //buildImageCard(),
              SizedBox(height: 12),

              Expanded(
                child: ListView(children: <Widget>[
                   buildCard("EL-Madf3aya","images/academy-image.jpg","Helioplios","200","5"),

                   SizedBox(height: 6),
                   buildCard("Gardinia","images/cardimage.jpg","Nasr City","250","4"),
                   SizedBox(height: 6),
                   buildCard("EL-Madf3aya","images/academy-image.jpg","Helioplios","200","5"),
                   SizedBox(height: 6),
                   buildCard("Gardinia","images/cardimage.jpg","Nasr City","250","4"),
                   SizedBox(height: 6),
                   buildCard("EL-Madf3aya","images/academy-image.jpg","Helioplios","200","5")
                 ],),
              ),


              MediaQuery.of(context).viewInsets.bottom==0?Container(color:Colors.white,height:60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    InkWell(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context){return HomePage("");}));
                      },
                      child: Column(children: <Widget>[
                        Image.asset("images/profile-icon3.png",fit: BoxFit.contain,width: 30,),
                        SizedBox(height: 2,),
                        Text("Profile",style: TextStyle(fontSize: 18),)
                      ],),)
                    ,
                    InkWell(
                      splashColor: Colors.green,
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context){return PlayGrounds("");}));
                      },
                      child:  Column(children: <Widget>[
                        Image.asset("images/reservation-icon-18.jpg",fit: BoxFit.contain,width: 40,),
                        Text("Reservation",style: TextStyle(fontSize: 17,color: Colors.red),)
                      ],),)
                    ,
                    InkWell(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context){return Academy("");}));
                      },
                      child: Column(children: <Widget>[
                        Image.asset("images/academy-icon6.png",fit: BoxFit.contain,width: 40,),
                        Text("Academy",style: TextStyle(fontSize: 17,),)
                      ],),)
                    ,
                    InkWell(
                      splashColor: Colors.green,
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context){return League("");}));
                      },
                      child:  Column(children: <Widget>[
                        Image.asset("images/world-cup.png",fit: BoxFit.contain,width: 40,),
                        Text("League",style: TextStyle(fontSize: 17,color: Colors.black),)
                      ],),)
                  ],
                ),):Container()




            ]

        ),
      ) ,


    );
  }


  /* Widget buildImageCard() => Card(

    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
    child: InkWell(
      onTap:(){
      print("Done");
    } ,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image(
            image: AssetImage("images/Football-Stagium.jpg"
            ),

            height: 240,
            fit: BoxFit.cover,
          ),
          Text(
            'Card With Splash',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ],
      ),
    ),
  );*/



  Widget buildCard(String PlaceName,String path,String location,String price,String NoOfFields){
    return InkWell(
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context){return ReservationScreen(PlaceName,path,location, price,NoOfFields) ;}));
        //Navigator.push(context,MaterialPageRoute(builder: (context){return RelatedPG(PlaceName);}));
      } ,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Image(
            image: AssetImage(path
            ),

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

          SizedBox(height: 18,),

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
                      backgroundColor: Colors.greenAccent,color: Colors.white,
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
                     color: Colors.black,fontWeight: FontWeight.bold,
                     fontSize: 19,
                   ),
                 ),
               ),

               SizedBox(width: 5,),

               Positioned(
                 bottom: 16,
                 left: 18,
                 child: Text(
                   'Fields',
                   style: TextStyle(textBaseline: TextBaseline.ideographic,
                     color: Colors.white,
                     fontSize: 19,
                   ),
                 ),
               ),
             ],
            ),
          ),
        ],
      ),
    );

  }


/* Container _drawerList() {
   /* TextStyle _textStyle = TextStyle(
      color: Colors.white,
      fontSize: 24,
    );*/
    return Container(
      //color: Theme.of(context).primaryColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
         Container(
           height: 200,
           width: 200,
           decoration: BoxDecoration(color: Colors.indigo),
            child: Column(
              children: <Widget>[
              SizedBox(height: 40,),
              CircleAvatar(
                radius: 60,
                backgroundColor: Colors.white,
              ),
                SizedBox(height: 6,),
              Text(" SARA YASSER", style: TextStyle(color: Colors.black))
            ],)
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.indigo,
              size: 30,
            ),
            title: Text(" Home" ,style: TextStyle(color: Colors.black),),

            onTap: () {
              // To close the Drawer
              Navigator.pop(context);
              // Navigating to About Page
              //Navigator.pushNamed(context, aboutRoute);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: Colors.indigo,
              size: 30,
            ),
            title: Text(
              " Setting" ,style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              // To close the Drawer
              Navigator.pop(context);
              // Navigating to About Page
              //Navigator.pushNamed(context, settingsRoute);
            },
          ),
        ],
      ),
    );
  }*/
}