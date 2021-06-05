import 'package:flutter/material.dart';

class Sorting extends StatefulWidget {
  @override
  _SortingState createState() => _SortingState();
}

class _SortingState extends State<Sorting> {
  final scaffoldkey=GlobalKey<ScaffoldState>();

  int selectedRadioTile;
  setSelectedRadioTile(int val) {
    setState(() {
      selectedRadioTile = val;
    });
  }

  @override
  void initState() {
    super.initState();
    selectedRadioTile = 0;
  }


  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 100,
      child: Dialog(
        child: Container(
            height: MediaQuery.of(context).size.height * 0.62,
            margin: EdgeInsets.symmetric(horizontal: 6),
            padding: EdgeInsets.symmetric(horizontal: 6, vertical: 24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(1),
              border: Border.all(
                color: Color(0xFFBF7F7),
                width: 7,
              ),
            ),
            child: Column(
              //mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                    'Choose a sort Option',
                    textAlign: TextAlign.start,
                    style: TextStyle( fontSize:20,
                      color: Colors.black,
                    fontWeight: FontWeight.bold,)
                ),
                Column(
                  children: [

                    RadioListTile(
                      value: 1,
                      groupValue: selectedRadioTile,
                      title: Text("Default",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      onChanged: (val) {
                        print("Radio Tile pressed $val");
                        setSelectedRadioTile(val);
                        if(val == 1){
                          print("i will sort from lowest to hightest");
                        }
                      },
                      activeColor: Colors.green,
                      //selected: true,
                    ),

                    RadioListTile(
                      value: 2,
                      groupValue: selectedRadioTile,
                      title: Text("Price from Low to High",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      onChanged: (val) {
                        print("Radio Tile pressed $val");
                        setSelectedRadioTile(val);
                        if(val == 2){
                          print("i will sort from Price from Low to High");
                        }
                      },
                      activeColor: Colors.green,

                      //selected: false,
                    ),


                    RadioListTile(
                      value: 3,
                      groupValue: selectedRadioTile,
                      title: Text("Price from High to  low",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      onChanged: (val) {
                        print("Radio Tile pressed $val");
                        setSelectedRadioTile(val);
                        if(val == 2){
                          print("i will sort from highest to lowest");
                        }
                      },
                      activeColor: Colors.green,

                      //selected: false,
                    ),



                    RadioListTile(
                      value: 4,
                      groupValue: selectedRadioTile,
                      title: Text("Field Name A to Z",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      onChanged: (val) {
                        print("Radio Tile pressed $val");
                        setSelectedRadioTile(val);

                      },
                      activeColor: Colors.green,

                      //selected: false,
                    ),


                    RadioListTile(
                      value: 5,
                      groupValue: selectedRadioTile,
                      title: Text("Field Name Z to A",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      onChanged: (val) {
                        print("Radio Tile pressed $val");
                        setSelectedRadioTile(val);

                      },
                      activeColor: Colors.green,

                      //selected: false,
                    ),




                    RadioListTile(
                      value: 6,
                      groupValue: selectedRadioTile,
                      title: Text("Nearest",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      onChanged: (val) {
                        print("Radio Tile pressed $val");
                        setSelectedRadioTile(val);

                      },
                      activeColor: Colors.green,

                      //selected: false,
                    ),

                  ],
                ),
              ],
            )),
          ),
    );
  }
}

