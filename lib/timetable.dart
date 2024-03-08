import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('School Timetable'),
        ),
        body: Timetable(),
      ),
    );
  }
}

class Timetable extends StatelessWidget {
  final List<String> daysOfWeek = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri'];
  final List<String> classPeriods = ['1st', '2nd', '3rd', '4th', '5th', '6th', '7th'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Table(
        border: TableBorder.all(color: Colors.black),
        children: [
          TableRow(
            children: [
              TableCell(child: Container()), // Empty cell at top-left corner
              for (var period in classPeriods)
                TableCell(
                  child: Center(child: Text(period, style: TextStyle(color: Colors.black, fontWeight:FontWeight.bold ))),
                ),
            ],
          ),
          for (var day in daysOfWeek)
            TableRow(
              children: [
                TableCell(
                  child: Center(child: Text(day, style: TextStyle(color: Colors.black, fontWeight:FontWeight.bold ))),
                ),
                for (var _ in classPeriods)
                  TableCell(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Center(child: Text('Your class content here6', style: TextStyle(color: Colors.blue))),
                    ),
                  ),
              ],
            ),
        ],
      ),
    );
  }
}
