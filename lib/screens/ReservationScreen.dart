import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'PlayGrounds.dart';
import 'Ticket.dart';

class ReservationScreen extends StatefulWidget {
  String PlaceName,path,location,price,NoOfFields;

  ReservationScreen(this.PlaceName,this.path,this.location,this.price,this.NoOfFields);

  @override
  _ReservationScreenState createState() => _ReservationScreenState(this.PlaceName,this.path,this.location,this.price,this.NoOfFields);
}

class _ReservationScreenState extends State<ReservationScreen> {
  String PlaceName,path,location,price,NoOfFields;

  _ReservationScreenState(this.PlaceName,this.path,this.location,this.price,this.NoOfFields);

  PlayGrounds x=new PlayGrounds("");

 CalendarFormat format = CalendarFormat.month;
  DateTime focusDay = DateTime.now();
  DateTime selectDay = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: Text("Place"),
            elevation: 0,
            leading: IconButton(onPressed: () {
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back)),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget> [

             buildCard(PlaceName,path,location,price,NoOfFields),

              SizedBox(height: 10,),
              Container(height: 250,
                width: 300,
                child: TableCalendar(
                  focusedDay: focusDay,
                  firstDay: DateTime(2010),
                  lastDay: DateTime(2050),
                  calendarFormat: format,
                  calendarStyle: CalendarStyle(outsideDaysVisible: false),
                  onDaySelected: (DateTime sDay , DateTime fDay) { setState(() {
                    selectDay = sDay;
                    focusDay = fDay;
                  });
                  print(focusDay);
                  },
                  selectedDayPredicate: (DateTime date) {
                    return isSameDay(selectDay, date);
                  },
                  headerStyle: HeaderStyle(titleCentered: true),
                ),
              ),

              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget> [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text("9-10 AM"),
                            style: ElevatedButton.styleFrom(primary: Colors.teal, onPrimary: Colors.white)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text("9-10 AM"),
                            style: ElevatedButton.styleFrom(primary: Colors.teal, onPrimary: Colors.white)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text("10-11 AM"),
                            style: ElevatedButton.styleFrom(primary: Colors.teal, onPrimary: Colors.white)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text("11-12 AM"),
                            style: ElevatedButton.styleFrom(primary: Colors.teal, onPrimary: Colors.white,)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text("12-1 PM"),
                            style: ElevatedButton.styleFrom(primary: Colors.teal, onPrimary: Colors.white,)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text("1-2 PM"),
                            style: ElevatedButton.styleFrom(primary: Colors.teal, onPrimary: Colors.white,)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text("2-3 PM"),
                            style: ElevatedButton.styleFrom(primary: Colors.teal, onPrimary: Colors.white,)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text("3-4 PM"),
                            style: ElevatedButton.styleFrom(primary: Colors.teal, onPrimary: Colors.white,)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text("4-5 PM"),
                            style: ElevatedButton.styleFrom(primary: Colors.teal, onPrimary: Colors.white,)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text("5-6 PM"),
                            style: ElevatedButton.styleFrom(primary: Colors.teal, onPrimary: Colors.white,)),
                      ),
                    ],
                  )),
              Divider(color: Colors.black54, indent: 10, endIndent: 10, height: 10, thickness: 1.5),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget> [
                    Icon(Icons.sports_soccer, color: Colors.teal, size: 35),
                    Icon(Icons.wash, color: Colors.teal, size: 35),
                    Icon(Icons.wc, color: Colors.teal, size: 35),
                    Icon(Icons.shower, color: Colors.teal, size: 35),
                    Icon(Icons.vpn_key, color: Colors.teal, size: 35),
                  ],
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context){return Ticket(PlaceName) ;}));
                  },
                  child: Text("Reserve"),
                  style: ElevatedButton.styleFrom(primary: Colors.green, onPrimary: Colors.white,)),
            ],
          ),
        );

  }

  Widget buildCard(String PlaceName,String path,String location,String price,String NoOfFields){
    return Stack(
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
    );

  }
}


