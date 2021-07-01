import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import '../PlayGrounds/PlayGrounds.dart';
import '../Ticket/Ticket.dart';
import 'component/BoxDataTime.dart';
import 'component/appBar.dart';
import 'component/buildCard.dart';

class ReservationScreen extends StatefulWidget {
  String PlaceName, path, location, price, NoOfFields;

  ReservationScreen(
      this.PlaceName, this.path, this.location, this.price, this.NoOfFields);

  @override
  _ReservationScreenState createState() => _ReservationScreenState(
      this.PlaceName, this.path, this.location, this.price, this.NoOfFields);
}

class _ReservationScreenState extends State<ReservationScreen> {
  String PlaceName, path, location, price, NoOfFields;

  _ReservationScreenState(
      this.PlaceName, this.path, this.location, this.price, this.NoOfFields);

  PlayGrounds x = new PlayGrounds("");

  CalendarFormat format = CalendarFormat.month;
  DateTime focusDay = DateTime.now();
  DateTime selectDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //====== appBar Page =================================================
      appBar: appBar(context),

      //====== body =======================================================
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            buildCard(PlaceName, path, location, price, NoOfFields),

            SizedBox(height: 10,),

          //====== TableCalendar ==========================================
            Container(
              width: 300,
              child: TableCalendar(
                focusedDay: focusDay,
                firstDay: DateTime(2010),
                lastDay: DateTime(2050),
                calendarFormat: format,
                calendarStyle: CalendarStyle(outsideDaysVisible: false),
                onDaySelected: (DateTime sDay, DateTime fDay) {
                  setState(() {
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

            //====== BoxDataTime =============================================
            BoxDataTime(),

            Divider(
                color: Colors.black54,
                indent: 10,
                endIndent: 10,
                height: 10,
                thickness: 1.5),


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Ticket(PlaceName);
                  }));
                },
                child: Text("Reserve"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  onPrimary: Colors.white,
                )),
          ],
        ),
      ),
    );
  }
}
