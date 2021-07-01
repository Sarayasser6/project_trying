

import 'package:flutter/material.dart';
import '../homePage/homePage.dart';


class PageDrawer extends StatefulWidget {
  @override
  _PageDrawerState createState() => _PageDrawerState();
}

class _PageDrawerState extends State<PageDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        //color: Theme.of(context).primaryColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
                height: 250,
                //width: 50,
                decoration: BoxDecoration(color: Colors.green),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 45,),
                    CircleAvatar(
                      backgroundImage: AssetImage("images/nextLogo3.jpg",),
                      radius: 70,
                      //backgroundColor: Colors.white,
                    ),
                    SizedBox(height: 6,),
                    Text("Next", style: TextStyle(color: Colors.black,fontSize: 30))
                  ],)
            ),

            SizedBox(height: 20,),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.indigo,
                size: 30,
              ),
              title: Text(" Home" ,style: TextStyle(color: Colors.black,fontSize: 20),),

              onTap: () {
                // To close the Drawer
                Navigator.pop(context);
                // Navigating to About Page
                Navigator.push(context,MaterialPageRoute(builder: (context){return HomePage("");}));
              },
            ),

            SizedBox(height: 20,),

            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.indigo,
                size: 30,
              ),
              title: Text(
                " Setting" ,style: TextStyle(color: Colors.black,fontSize: 20),
              ),
              onTap: () {
                // To close the Drawer
                Navigator.pop(context);
                // Navigating to About Page
                //Navigator.pushNamed(context, settingsRoute);
              },
            ),
            SizedBox(height: 20,),


            ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.indigo,
                size: 30,
              ),
              title: Text(
                " Profile" ,style: TextStyle(color: Colors.black,fontSize: 20),
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
      ),
    );
  }
}