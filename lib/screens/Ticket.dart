import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Ticket extends StatefulWidget {
  String PlaceName;

  Ticket(this.PlaceName);

  @override
  _TicketState createState() => _TicketState(this.PlaceName);
}

class _TicketState extends State<Ticket> {

  String PlaceName;
  _TicketState(this.PlaceName);
  CalendarFormat format = CalendarFormat.month;
  DateTime focusDay = DateTime.now();
  DateTime selectDay = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(child :Text(PlaceName)),
        elevation: 0,
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            Row(
              children: [
                Text("Field:", style: TextStyle(fontSize: 20, color: Colors.black26)),
                Text(PlaceName, style: TextStyle(fontSize: 17, color: Colors.black)),
              ],
            ),
            Row(
              children: <Widget> [
                Text("Date:", style: TextStyle(fontSize: 20, color: Colors.black26)),
                Text("date chosen:", style: TextStyle(fontSize: 17, color: Colors.black)),
              ],
            ),
            Center(
              child: Container(
                color: Colors.black12,
                width: 60,
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text(selectDay.toString()),
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget> [
                ElevatedButton(onPressed: () {}, child: Text("Confirm" , style: TextStyle(fontSize: 20),),
                    style: ElevatedButton.styleFrom(primary: Colors.green , onPrimary: Colors.white)),
                ElevatedButton(onPressed: () {}, child: Text("Cancel" , style: TextStyle(fontSize: 20),),
                    style: ElevatedButton.styleFrom(primary: Colors.black12 , onPrimary: Colors.white)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
