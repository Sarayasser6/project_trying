import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class FilterSCreen extends StatefulWidget {
  @override
  _FilterSCreenState createState() => _FilterSCreenState();
}

class _FilterSCreenState extends State<FilterSCreen> {
  RangeValues values= RangeValues(100,900);
  RangeLabels labels= RangeLabels("100","900");
  double value=900;

  List<String> status=["Heliopolis","Nasr city"];
  List<String> size=["All Sizes","5x5","7x7","11x11"];
  String selectedValue ='Choose Location';
  String selectedValueSize ='Choose Size';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon:Icon(Icons.arrow_back), onPressed: (){
          Navigator.pop(context);
        }),
        title: Text("FILTER"),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 20,right: 6,left: 6,bottom: 6),
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          //padding: EdgeInsets.only(top: 10,right: 6,left: 6,bottom: 6),
          children: <Widget>[
            Container(
              height: 150,
              width: 300,
              child: Image(
                gaplessPlayback: false,
                image: AssetImage("images/nextLogo2.jpg",
                ),
                fit: BoxFit.cover,
                height: 150,
                width: 100,
              ) ,
            ),
            /*Image(
              image: AssetImage("images/Playground.png"),
              height: 170,
              width: 170,
              fit: BoxFit.cover,),*/
            SizedBox(height: 25,),

            ListTile(
              leading: Icon(Icons.location_on,color: Colors.black,),
              title:  DropdownButton(
                hint: Text(selectedValue,style: TextStyle(color: Colors.black)),
                style: TextStyle(color: Colors.blue),
                isExpanded: true,
                //value: selectedValue != null ? selectedValue : 'Choose Location',
                items: status.map((location) {
                  return DropdownMenuItem<String>(
                    child: new Text(location),
                    value: location,
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    selectedValue = newValue;
                    debugPrint( selectedValue);
                  });
                },
              ),
            ),
            SizedBox(height: 10,),

            ListTile(
              leading: Icon(Icons.settings_overscan,color: Colors.black,),
              title: DropdownButton(
                hint: Text(selectedValueSize,style: TextStyle(color: Colors.black)),
                style: TextStyle(color: Colors.blue),
               isExpanded: true,
                //value: selectedValueSize,
                items: size.map((item) {
                  return DropdownMenuItem<String>(
                    child: new Text(item),
                    value: item,
                  );
                }).toList(),
                onChanged: (String newVal) {
                  setState(() {
                    selectedValueSize = newVal;
                    debugPrint( selectedValueSize);
                  });
                },
              ),
            ),

            SizedBox(height: 20),

            ListTile(leading: Icon(Icons.monetization_on,color: Colors.black,),title: Text("Price",style: TextStyle(color: Colors.black),),),

            //SizedBox(height: 5),


            RangeSlider(
                min: 100 , max:900,
                divisions: 10,
                values: values,
                labels: labels,

                onChanged: (value){
                  setState(() {
                    values=value;
                    labels=RangeLabels("${value.start.toInt().toString()}\$", "${value.end.toInt().toString()}\$");
                    debugPrint(values.toString());
                  });
                }

            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("100",style: TextStyle(color: Colors.black),),
                Text("900",style: TextStyle(color: Colors.black),),

              ],),


            SizedBox(height: 10),


            Padding(
              padding:EdgeInsets.all(20) ,
                // ignore: deprecated_member_use
                child: Container(
                  width: 300,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    onPressed: (){},
                    color: Colors.green,
                    child: Text("APPLY"),
                    textColor: Colors.white,
                  ),
                ),

            ),



          ],
        )
        ,) ,
    );
  }
}
